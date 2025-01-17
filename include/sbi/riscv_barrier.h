/*
 * SPDX-License-Identifier: BSD-2-Clause
 *
 * Copyright (c) 2019 Western Digital Corporation or its affiliates.
 *
 * Authors:
 *   Anup Patel <anup.patel@wdc.com>
 */

#ifndef __RISCV_BARRIER_H__
#define __RISCV_BARRIER_H__

/* clang-format off */

#define RISCV_ACQUIRE_BARRIER		"\tfence r , rw\n"
#define RISCV_RELEASE_BARRIER		"\tfence rw,  w\n"

#define RISCV_FENCE(p, s) \
	__asm__ __volatile__ ("fence " #p "," #s : : : "memory")

#define RISCV_FENCE_I \
	__asm__ __volatile__ ("fence.i" : : : "memory")

/* Read & Write Memory barrier */
#define mb()			RISCV_FENCE(iorw,iorw)

/* Read Memory barrier */
#define rmb()			RISCV_FENCE(ir,ir)

/* Write Memory barrier */
#define wmb()			RISCV_FENCE(ow,ow)

/* SMP Read & Write Memory barrier */
#define smp_mb()		RISCV_FENCE(rw,rw)

/* SMP Read Memory barrier */
#define smp_rmb()		RISCV_FENCE(r,r)

/* SMP Write Memory barrier */
#define smp_wmb()		RISCV_FENCE(w,w)

/* CPU relax for busy loop */
#define cpu_relax()						\
do {								\
	unsigned long __t;					\
	__asm__ __volatile__ ("div %0, %0, zero" : "=r" (__t));	\
} while (0)

/* clang-format on */

#ifdef CONFIG_PLATFORM_SOPHGO_SG2042
#define __smp_store_release(p, v)   \
	do {                        \
		RISCV_FENCE(rw, w); \
		*(p) = (v);         \
		RISCV_FENCE(w, rw); \
	} while (0)
#else
#define __smp_store_release(p, v)   \
	do {                        \
		RISCV_FENCE(rw, w); \
		*(p) = (v);         \
	} while (0)
#endif

#define __smp_load_acquire(p)            \
	({                               \
		typeof(*p) ___p1 = *(p); \
		RISCV_FENCE(r, rw);      \
		___p1;                   \
	})

#endif
