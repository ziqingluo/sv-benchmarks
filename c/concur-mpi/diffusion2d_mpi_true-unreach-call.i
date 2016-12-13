typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef short __int16_t;
typedef unsigned short __uint16_t;
typedef int __int32_t;
typedef unsigned int __uint32_t;
typedef long long __int64_t;
typedef unsigned long long __uint64_t;
typedef long __darwin_intptr_t;
typedef unsigned int __darwin_natural_t;
typedef int __darwin_ct_rune_t;
typedef union {
 char __mbstate8[128];
 long long _mbstateL;
} __mbstate_t;
typedef __mbstate_t __darwin_mbstate_t;
typedef int __darwin_ptrdiff_t;
typedef long unsigned int __darwin_size_t;
typedef __builtin_va_list __darwin_va_list;
typedef int __darwin_wchar_t;
typedef __darwin_wchar_t __darwin_rune_t;
typedef int __darwin_wint_t;
typedef unsigned long __darwin_clock_t;
typedef __uint32_t __darwin_socklen_t;
typedef long __darwin_ssize_t;
typedef long __darwin_time_t;
typedef __int64_t __darwin_blkcnt_t;
typedef __int32_t __darwin_blksize_t;
typedef __int32_t __darwin_dev_t;
typedef unsigned int __darwin_fsblkcnt_t;
typedef unsigned int __darwin_fsfilcnt_t;
typedef __uint32_t __darwin_gid_t;
typedef __uint32_t __darwin_id_t;
typedef __uint64_t __darwin_ino64_t;
typedef __darwin_ino64_t __darwin_ino_t;
typedef __darwin_natural_t __darwin_mach_port_name_t;
typedef __darwin_mach_port_name_t __darwin_mach_port_t;
typedef __uint16_t __darwin_mode_t;
typedef __int64_t __darwin_off_t;
typedef __int32_t __darwin_pid_t;
typedef __uint32_t __darwin_sigset_t;
typedef __int32_t __darwin_suseconds_t;
typedef __uint32_t __darwin_uid_t;
typedef __uint32_t __darwin_useconds_t;
typedef unsigned char __darwin_uuid_t[16];
typedef char __darwin_uuid_string_t[37];
struct __darwin_pthread_handler_rec {
 void (*__routine)(void *);
 void *__arg;
 struct __darwin_pthread_handler_rec *__next;
};
struct _opaque_pthread_attr_t {
 long __sig;
 char __opaque[36];
};
struct _opaque_pthread_cond_t {
 long __sig;
 char __opaque[24];
};
struct _opaque_pthread_condattr_t {
 long __sig;
 char __opaque[4];
};
struct _opaque_pthread_mutex_t {
 long __sig;
 char __opaque[40];
};
struct _opaque_pthread_mutexattr_t {
 long __sig;
 char __opaque[8];
};
struct _opaque_pthread_once_t {
 long __sig;
 char __opaque[4];
};
struct _opaque_pthread_rwlock_t {
 long __sig;
 char __opaque[124];
};
struct _opaque_pthread_rwlockattr_t {
 long __sig;
 char __opaque[12];
};
struct _opaque_pthread_t {
 long __sig;
 struct __darwin_pthread_handler_rec *__cleanup_stack;
 char __opaque[4088];
};
typedef struct _opaque_pthread_attr_t __darwin_pthread_attr_t;
typedef struct _opaque_pthread_cond_t __darwin_pthread_cond_t;
typedef struct _opaque_pthread_condattr_t __darwin_pthread_condattr_t;
typedef unsigned long __darwin_pthread_key_t;
typedef struct _opaque_pthread_mutex_t __darwin_pthread_mutex_t;
typedef struct _opaque_pthread_mutexattr_t __darwin_pthread_mutexattr_t;
typedef struct _opaque_pthread_once_t __darwin_pthread_once_t;
typedef struct _opaque_pthread_rwlock_t __darwin_pthread_rwlock_t;
typedef struct _opaque_pthread_rwlockattr_t __darwin_pthread_rwlockattr_t;
typedef struct _opaque_pthread_t *__darwin_pthread_t;
typedef int __darwin_nl_item;
typedef int __darwin_wctrans_t;
typedef unsigned long __darwin_wctype_t;
typedef __darwin_va_list va_list;
typedef __darwin_size_t size_t;

int renameat(int, const char *, int, const char *) ;

typedef __darwin_off_t fpos_t;
struct __sbuf {
 unsigned char *_base;
 int _size;
};
struct __sFILEX;
typedef struct __sFILE {
 unsigned char *_p;
 int _r;
 int _w;
 short _flags;
 short _file;
 struct __sbuf _bf;
 int _lbfsize;
 void *_cookie;
 int (*_close)(void *);
 int (*_read) (void *, char *, int);
 fpos_t (*_seek) (void *, fpos_t, int);
 int (*_write)(void *, const char *, int);
 struct __sbuf _ub;
 struct __sFILEX *_extra;
 int _ur;
 unsigned char _ubuf[3];
 unsigned char _nbuf[1];
 struct __sbuf _lb;
 int _blksize;
 fpos_t _offset;
} FILE;

extern FILE *__stdinp;
extern FILE *__stdoutp;
extern FILE *__stderrp;


void clearerr(FILE *);
int fclose(FILE *);
int feof(FILE *);
int ferror(FILE *);
int fflush(FILE *);
int fgetc(FILE *);
int fgetpos(FILE * restrict, fpos_t *);
char *fgets(char * restrict, int, FILE *);
FILE *fopen(const char * restrict, const char * restrict) __asm("_" "fopen" "$UNIX2003");
int fprintf(FILE * restrict, const char * restrict, ...) __attribute__((__format__ (__printf__, 2, 3)));
int fputc(int, FILE *);
int fputs(const char * restrict, FILE * restrict) __asm("_" "fputs" "$UNIX2003");
size_t fread(void * restrict, size_t, size_t, FILE * restrict);
FILE *freopen(const char * restrict, const char * restrict,
                 FILE * restrict) __asm("_" "freopen" "$UNIX2003");
int fscanf(FILE * restrict, const char * restrict, ...) __attribute__((__format__ (__scanf__, 2, 3)));
int fseek(FILE *, long, int);
int fsetpos(FILE *, const fpos_t *);
long ftell(FILE *);
size_t fwrite(const void * restrict, size_t, size_t, FILE * restrict) __asm("_" "fwrite" "$UNIX2003");
int getc(FILE *);
int getchar(void);
char *gets(char *);
void perror(const char *);
int printf(const char * restrict, ...) __attribute__((__format__ (__printf__, 1, 2)));
int putc(int, FILE *);
int putchar(int);
int puts(const char *);
int remove(const char *);
int rename (const char *, const char *);
void rewind(FILE *);
int scanf(const char * restrict, ...) __attribute__((__format__ (__scanf__, 1, 2)));
void setbuf(FILE * restrict, char * restrict);
int setvbuf(FILE * restrict, char * restrict, int, size_t);
int sprintf(char * restrict, const char * restrict, ...) __attribute__((__format__ (__printf__, 2, 3)));
int sscanf(const char * restrict, const char * restrict, ...) __attribute__((__format__ (__scanf__, 2, 3)));
FILE *tmpfile(void);
__attribute__((deprecated("This function is provided for compatibility reasons only.  Due to security concerns inherent in the design of tmpnam(3), it is highly recommended that you use mkstemp(3) instead.")))
char *tmpnam(char *);
int ungetc(int, FILE *);
int vfprintf(FILE * restrict, const char * restrict, va_list) __attribute__((__format__ (__printf__, 2, 0)));
int vprintf(const char * restrict, va_list) __attribute__((__format__ (__printf__, 1, 0)));
int vsprintf(char * restrict, const char * restrict, va_list) __attribute__((__format__ (__printf__, 2, 0)));


char *ctermid(char *);
FILE *fdopen(int, const char *) __asm("_" "fdopen" "$UNIX2003");
int fileno(FILE *);


int pclose(FILE *);
FILE *popen(const char *, const char *) __asm("_" "popen" "$UNIX2003");


int __srget(FILE *);
int __svfscanf(FILE *, const char *, va_list) __attribute__((__format__ (__scanf__, 2, 0)));
int __swbuf(int, FILE *);

extern __inline __attribute__((__gnu_inline__)) __attribute__ ((__always_inline__)) int __sputc(int _c, FILE *_p) {
 if (--_p->_w >= 0 || (_p->_w >= _p->_lbfsize && (char)_c != '\n'))
  return (*_p->_p++ = _c);
 else
  return (__swbuf(_c, _p));
}

void flockfile(FILE *);
int ftrylockfile(FILE *);
void funlockfile(FILE *);
int getc_unlocked(FILE *);
int getchar_unlocked(void);
int putc_unlocked(int, FILE *);
int putchar_unlocked(int);
int getw(FILE *);
int putw(int, FILE *);
__attribute__((deprecated("This function is provided for compatibility reasons only.  Due to security concerns inherent in the design of tempnam(3), it is highly recommended that you use mkstemp(3) instead.")))
char *tempnam(const char *, const char *) __asm("_" "tempnam" "$UNIX2003");

typedef __darwin_off_t off_t;

int fseeko(FILE *, off_t, int);
off_t ftello(FILE *);


int snprintf(char * restrict, size_t, const char * restrict, ...) __attribute__((__format__ (__printf__, 3, 4)));
int vfscanf(FILE * restrict, const char * restrict, va_list) __attribute__((__format__ (__scanf__, 2, 0)));
int vscanf(const char * restrict, va_list) __attribute__((__format__ (__scanf__, 1, 0)));
int vsnprintf(char * restrict, size_t, const char * restrict, va_list) __attribute__((__format__ (__printf__, 3, 0)));
int vsscanf(const char * restrict, const char * restrict, va_list) __attribute__((__format__ (__scanf__, 2, 0)));

typedef __darwin_ssize_t ssize_t;

int dprintf(int, const char * restrict, ...) __attribute__((__format__ (__printf__, 2, 3))) ;
int vdprintf(int, const char * restrict, va_list) __attribute__((__format__ (__printf__, 2, 0))) ;
ssize_t getdelim(char ** restrict, size_t * restrict, int, FILE * restrict) ;
ssize_t getline(char ** restrict, size_t * restrict, FILE * restrict) ;


extern const int sys_nerr;
extern const char *const sys_errlist[];
int asprintf(char ** restrict, const char * restrict, ...) __attribute__((__format__ (__printf__, 2, 3)));
char *ctermid_r(char *);
char *fgetln(FILE *, size_t *);
const char *fmtcheck(const char *, const char *);
int fpurge(FILE *);
void setbuffer(FILE *, char *, int);
int setlinebuf(FILE *);
int vasprintf(char ** restrict, const char * restrict, va_list) __attribute__((__format__ (__printf__, 2, 0)));
FILE *zopen(const char *, const char *, int);
FILE *funopen(const void *,
                 int (*)(void *, char *, int),
                 int (*)(void *, const char *, int),
                 fpos_t (*)(void *, fpos_t, int),
                 int (*)(void *));

extern int __sprintf_chk (char * restrict, int, size_t,
     const char * restrict, ...);
extern int __snprintf_chk (char * restrict, size_t, int, size_t,
      const char * restrict, ...);
extern int __vsprintf_chk (char * restrict, int, size_t,
      const char * restrict, va_list);
extern int __vsnprintf_chk (char * restrict, size_t, int, size_t,
       const char * restrict, va_list);
typedef enum {
 P_ALL,
 P_PID,
 P_PGID
} idtype_t;
typedef __darwin_pid_t pid_t;
typedef __darwin_id_t id_t;
typedef int sig_atomic_t;
struct __darwin_i386_thread_state
{
    unsigned int __eax;
    unsigned int __ebx;
    unsigned int __ecx;
    unsigned int __edx;
    unsigned int __edi;
    unsigned int __esi;
    unsigned int __ebp;
    unsigned int __esp;
    unsigned int __ss;
    unsigned int __eflags;
    unsigned int __eip;
    unsigned int __cs;
    unsigned int __ds;
    unsigned int __es;
    unsigned int __fs;
    unsigned int __gs;
};
struct __darwin_fp_control
{
    unsigned short __invalid :1,
        __denorm :1,
    __zdiv :1,
    __ovrfl :1,
    __undfl :1,
    __precis :1,
      :2,
    __pc :2,
    __rc :2,
             :1,
      :3;
};
typedef struct __darwin_fp_control __darwin_fp_control_t;
struct __darwin_fp_status
{
    unsigned short __invalid :1,
        __denorm :1,
    __zdiv :1,
    __ovrfl :1,
    __undfl :1,
    __precis :1,
    __stkflt :1,
    __errsumm :1,
    __c0 :1,
    __c1 :1,
    __c2 :1,
    __tos :3,
    __c3 :1,
    __busy :1;
};
typedef struct __darwin_fp_status __darwin_fp_status_t;
struct __darwin_mmst_reg
{
 char __mmst_reg[10];
 char __mmst_rsrv[6];
};
struct __darwin_xmm_reg
{
 char __xmm_reg[16];
};
struct __darwin_i386_float_state
{
 int __fpu_reserved[2];
 struct __darwin_fp_control __fpu_fcw;
 struct __darwin_fp_status __fpu_fsw;
 __uint8_t __fpu_ftw;
 __uint8_t __fpu_rsrv1;
 __uint16_t __fpu_fop;
 __uint32_t __fpu_ip;
 __uint16_t __fpu_cs;
 __uint16_t __fpu_rsrv2;
 __uint32_t __fpu_dp;
 __uint16_t __fpu_ds;
 __uint16_t __fpu_rsrv3;
 __uint32_t __fpu_mxcsr;
 __uint32_t __fpu_mxcsrmask;
 struct __darwin_mmst_reg __fpu_stmm0;
 struct __darwin_mmst_reg __fpu_stmm1;
 struct __darwin_mmst_reg __fpu_stmm2;
 struct __darwin_mmst_reg __fpu_stmm3;
 struct __darwin_mmst_reg __fpu_stmm4;
 struct __darwin_mmst_reg __fpu_stmm5;
 struct __darwin_mmst_reg __fpu_stmm6;
 struct __darwin_mmst_reg __fpu_stmm7;
 struct __darwin_xmm_reg __fpu_xmm0;
 struct __darwin_xmm_reg __fpu_xmm1;
 struct __darwin_xmm_reg __fpu_xmm2;
 struct __darwin_xmm_reg __fpu_xmm3;
 struct __darwin_xmm_reg __fpu_xmm4;
 struct __darwin_xmm_reg __fpu_xmm5;
 struct __darwin_xmm_reg __fpu_xmm6;
 struct __darwin_xmm_reg __fpu_xmm7;
 char __fpu_rsrv4[14*16];
 int __fpu_reserved1;
};
struct __darwin_i386_avx_state
{
 int __fpu_reserved[2];
 struct __darwin_fp_control __fpu_fcw;
 struct __darwin_fp_status __fpu_fsw;
 __uint8_t __fpu_ftw;
 __uint8_t __fpu_rsrv1;
 __uint16_t __fpu_fop;
 __uint32_t __fpu_ip;
 __uint16_t __fpu_cs;
 __uint16_t __fpu_rsrv2;
 __uint32_t __fpu_dp;
 __uint16_t __fpu_ds;
 __uint16_t __fpu_rsrv3;
 __uint32_t __fpu_mxcsr;
 __uint32_t __fpu_mxcsrmask;
 struct __darwin_mmst_reg __fpu_stmm0;
 struct __darwin_mmst_reg __fpu_stmm1;
 struct __darwin_mmst_reg __fpu_stmm2;
 struct __darwin_mmst_reg __fpu_stmm3;
 struct __darwin_mmst_reg __fpu_stmm4;
 struct __darwin_mmst_reg __fpu_stmm5;
 struct __darwin_mmst_reg __fpu_stmm6;
 struct __darwin_mmst_reg __fpu_stmm7;
 struct __darwin_xmm_reg __fpu_xmm0;
 struct __darwin_xmm_reg __fpu_xmm1;
 struct __darwin_xmm_reg __fpu_xmm2;
 struct __darwin_xmm_reg __fpu_xmm3;
 struct __darwin_xmm_reg __fpu_xmm4;
 struct __darwin_xmm_reg __fpu_xmm5;
 struct __darwin_xmm_reg __fpu_xmm6;
 struct __darwin_xmm_reg __fpu_xmm7;
 char __fpu_rsrv4[14*16];
 int __fpu_reserved1;
 char __avx_reserved1[64];
 struct __darwin_xmm_reg __fpu_ymmh0;
 struct __darwin_xmm_reg __fpu_ymmh1;
 struct __darwin_xmm_reg __fpu_ymmh2;
 struct __darwin_xmm_reg __fpu_ymmh3;
 struct __darwin_xmm_reg __fpu_ymmh4;
 struct __darwin_xmm_reg __fpu_ymmh5;
 struct __darwin_xmm_reg __fpu_ymmh6;
 struct __darwin_xmm_reg __fpu_ymmh7;
};
struct __darwin_i386_exception_state
{
 __uint16_t __trapno;
 __uint16_t __cpu;
 __uint32_t __err;
 __uint32_t __faultvaddr;
};
struct __darwin_x86_debug_state32
{
 unsigned int __dr0;
 unsigned int __dr1;
 unsigned int __dr2;
 unsigned int __dr3;
 unsigned int __dr4;
 unsigned int __dr5;
 unsigned int __dr6;
 unsigned int __dr7;
};
struct __darwin_x86_thread_state64
{
 __uint64_t __rax;
 __uint64_t __rbx;
 __uint64_t __rcx;
 __uint64_t __rdx;
 __uint64_t __rdi;
 __uint64_t __rsi;
 __uint64_t __rbp;
 __uint64_t __rsp;
 __uint64_t __r8;
 __uint64_t __r9;
 __uint64_t __r10;
 __uint64_t __r11;
 __uint64_t __r12;
 __uint64_t __r13;
 __uint64_t __r14;
 __uint64_t __r15;
 __uint64_t __rip;
 __uint64_t __rflags;
 __uint64_t __cs;
 __uint64_t __fs;
 __uint64_t __gs;
};
struct __darwin_x86_float_state64
{
 int __fpu_reserved[2];
 struct __darwin_fp_control __fpu_fcw;
 struct __darwin_fp_status __fpu_fsw;
 __uint8_t __fpu_ftw;
 __uint8_t __fpu_rsrv1;
 __uint16_t __fpu_fop;
 __uint32_t __fpu_ip;
 __uint16_t __fpu_cs;
 __uint16_t __fpu_rsrv2;
 __uint32_t __fpu_dp;
 __uint16_t __fpu_ds;
 __uint16_t __fpu_rsrv3;
 __uint32_t __fpu_mxcsr;
 __uint32_t __fpu_mxcsrmask;
 struct __darwin_mmst_reg __fpu_stmm0;
 struct __darwin_mmst_reg __fpu_stmm1;
 struct __darwin_mmst_reg __fpu_stmm2;
 struct __darwin_mmst_reg __fpu_stmm3;
 struct __darwin_mmst_reg __fpu_stmm4;
 struct __darwin_mmst_reg __fpu_stmm5;
 struct __darwin_mmst_reg __fpu_stmm6;
 struct __darwin_mmst_reg __fpu_stmm7;
 struct __darwin_xmm_reg __fpu_xmm0;
 struct __darwin_xmm_reg __fpu_xmm1;
 struct __darwin_xmm_reg __fpu_xmm2;
 struct __darwin_xmm_reg __fpu_xmm3;
 struct __darwin_xmm_reg __fpu_xmm4;
 struct __darwin_xmm_reg __fpu_xmm5;
 struct __darwin_xmm_reg __fpu_xmm6;
 struct __darwin_xmm_reg __fpu_xmm7;
 struct __darwin_xmm_reg __fpu_xmm8;
 struct __darwin_xmm_reg __fpu_xmm9;
 struct __darwin_xmm_reg __fpu_xmm10;
 struct __darwin_xmm_reg __fpu_xmm11;
 struct __darwin_xmm_reg __fpu_xmm12;
 struct __darwin_xmm_reg __fpu_xmm13;
 struct __darwin_xmm_reg __fpu_xmm14;
 struct __darwin_xmm_reg __fpu_xmm15;
 char __fpu_rsrv4[6*16];
 int __fpu_reserved1;
};
struct __darwin_x86_avx_state64
{
 int __fpu_reserved[2];
 struct __darwin_fp_control __fpu_fcw;
 struct __darwin_fp_status __fpu_fsw;
 __uint8_t __fpu_ftw;
 __uint8_t __fpu_rsrv1;
 __uint16_t __fpu_fop;
 __uint32_t __fpu_ip;
 __uint16_t __fpu_cs;
 __uint16_t __fpu_rsrv2;
 __uint32_t __fpu_dp;
 __uint16_t __fpu_ds;
 __uint16_t __fpu_rsrv3;
 __uint32_t __fpu_mxcsr;
 __uint32_t __fpu_mxcsrmask;
 struct __darwin_mmst_reg __fpu_stmm0;
 struct __darwin_mmst_reg __fpu_stmm1;
 struct __darwin_mmst_reg __fpu_stmm2;
 struct __darwin_mmst_reg __fpu_stmm3;
 struct __darwin_mmst_reg __fpu_stmm4;
 struct __darwin_mmst_reg __fpu_stmm5;
 struct __darwin_mmst_reg __fpu_stmm6;
 struct __darwin_mmst_reg __fpu_stmm7;
 struct __darwin_xmm_reg __fpu_xmm0;
 struct __darwin_xmm_reg __fpu_xmm1;
 struct __darwin_xmm_reg __fpu_xmm2;
 struct __darwin_xmm_reg __fpu_xmm3;
 struct __darwin_xmm_reg __fpu_xmm4;
 struct __darwin_xmm_reg __fpu_xmm5;
 struct __darwin_xmm_reg __fpu_xmm6;
 struct __darwin_xmm_reg __fpu_xmm7;
 struct __darwin_xmm_reg __fpu_xmm8;
 struct __darwin_xmm_reg __fpu_xmm9;
 struct __darwin_xmm_reg __fpu_xmm10;
 struct __darwin_xmm_reg __fpu_xmm11;
 struct __darwin_xmm_reg __fpu_xmm12;
 struct __darwin_xmm_reg __fpu_xmm13;
 struct __darwin_xmm_reg __fpu_xmm14;
 struct __darwin_xmm_reg __fpu_xmm15;
 char __fpu_rsrv4[6*16];
 int __fpu_reserved1;
 char __avx_reserved1[64];
 struct __darwin_xmm_reg __fpu_ymmh0;
 struct __darwin_xmm_reg __fpu_ymmh1;
 struct __darwin_xmm_reg __fpu_ymmh2;
 struct __darwin_xmm_reg __fpu_ymmh3;
 struct __darwin_xmm_reg __fpu_ymmh4;
 struct __darwin_xmm_reg __fpu_ymmh5;
 struct __darwin_xmm_reg __fpu_ymmh6;
 struct __darwin_xmm_reg __fpu_ymmh7;
 struct __darwin_xmm_reg __fpu_ymmh8;
 struct __darwin_xmm_reg __fpu_ymmh9;
 struct __darwin_xmm_reg __fpu_ymmh10;
 struct __darwin_xmm_reg __fpu_ymmh11;
 struct __darwin_xmm_reg __fpu_ymmh12;
 struct __darwin_xmm_reg __fpu_ymmh13;
 struct __darwin_xmm_reg __fpu_ymmh14;
 struct __darwin_xmm_reg __fpu_ymmh15;
};
struct __darwin_x86_exception_state64
{
    __uint16_t __trapno;
    __uint16_t __cpu;
    __uint32_t __err;
    __uint64_t __faultvaddr;
};
struct __darwin_x86_debug_state64
{
 __uint64_t __dr0;
 __uint64_t __dr1;
 __uint64_t __dr2;
 __uint64_t __dr3;
 __uint64_t __dr4;
 __uint64_t __dr5;
 __uint64_t __dr6;
 __uint64_t __dr7;
};
struct __darwin_mcontext32
{
 struct __darwin_i386_exception_state __es;
 struct __darwin_i386_thread_state __ss;
 struct __darwin_i386_float_state __fs;
};
struct __darwin_mcontext_avx32
{
 struct __darwin_i386_exception_state __es;
 struct __darwin_i386_thread_state __ss;
 struct __darwin_i386_avx_state __fs;
};
struct __darwin_mcontext64
{
 struct __darwin_x86_exception_state64 __es;
 struct __darwin_x86_thread_state64 __ss;
 struct __darwin_x86_float_state64 __fs;
};
struct __darwin_mcontext_avx64
{
 struct __darwin_x86_exception_state64 __es;
 struct __darwin_x86_thread_state64 __ss;
 struct __darwin_x86_avx_state64 __fs;
};
typedef struct __darwin_mcontext32 *mcontext_t;
typedef __darwin_pthread_attr_t pthread_attr_t;
struct __darwin_sigaltstack
{
 void *ss_sp;
 __darwin_size_t ss_size;
 int ss_flags;
};
typedef struct __darwin_sigaltstack stack_t;
struct __darwin_ucontext
{
 int uc_onstack;
 __darwin_sigset_t uc_sigmask;
 struct __darwin_sigaltstack uc_stack;
 struct __darwin_ucontext *uc_link;
 __darwin_size_t uc_mcsize;
 struct __darwin_mcontext32 *uc_mcontext;
};
typedef struct __darwin_ucontext ucontext_t;
typedef __darwin_sigset_t sigset_t;
typedef __darwin_uid_t uid_t;
union sigval {
 int sival_int;
 void *sival_ptr;
};
struct sigevent {
 int sigev_notify;
 int sigev_signo;
 union sigval sigev_value;
 void (*sigev_notify_function)(union sigval);
 pthread_attr_t *sigev_notify_attributes;
};
typedef struct __siginfo {
 int si_signo;
 int si_errno;
 int si_code;
 pid_t si_pid;
 uid_t si_uid;
 int si_status;
 void *si_addr;
 union sigval si_value;
 long si_band;
 unsigned long __pad[7];
} siginfo_t;
union __sigaction_u {
 void (*__sa_handler)(int);
 void (*__sa_sigaction)(int, struct __siginfo *,
         void *);
};
struct __sigaction {
 union __sigaction_u __sigaction_u;
 void (*sa_tramp)(void *, int, int, siginfo_t *, void *);
 sigset_t sa_mask;
 int sa_flags;
};
struct sigaction {
 union __sigaction_u __sigaction_u;
 sigset_t sa_mask;
 int sa_flags;
};
typedef void (*sig_t)(int);
struct sigvec {
 void (*sv_handler)(int);
 int sv_mask;
 int sv_flags;
};
struct sigstack {
 char *ss_sp;
 int ss_onstack;
};

void (*signal(int, void (*)(int)))(int);

typedef signed char int8_t;
typedef short int16_t;
typedef int int32_t;
typedef long long int64_t;
typedef unsigned char uint8_t;
typedef unsigned short uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long long uint64_t;
typedef int8_t int_least8_t;
typedef int16_t int_least16_t;
typedef int32_t int_least32_t;
typedef int64_t int_least64_t;
typedef uint8_t uint_least8_t;
typedef uint16_t uint_least16_t;
typedef uint32_t uint_least32_t;
typedef uint64_t uint_least64_t;
typedef int8_t int_fast8_t;
typedef int16_t int_fast16_t;
typedef int32_t int_fast32_t;
typedef int64_t int_fast64_t;
typedef uint8_t uint_fast8_t;
typedef uint16_t uint_fast16_t;
typedef uint32_t uint_fast32_t;
typedef uint64_t uint_fast64_t;
typedef __darwin_intptr_t intptr_t;
typedef unsigned long uintptr_t;
typedef long long int intmax_t;
typedef long long unsigned int uintmax_t;
struct timeval
{
 __darwin_time_t tv_sec;
 __darwin_suseconds_t tv_usec;
};
typedef __uint64_t rlim_t;
struct rusage {
 struct timeval ru_utime;
 struct timeval ru_stime;
 long ru_maxrss;
 long ru_ixrss;
 long ru_idrss;
 long ru_isrss;
 long ru_minflt;
 long ru_majflt;
 long ru_nswap;
 long ru_inblock;
 long ru_oublock;
 long ru_msgsnd;
 long ru_msgrcv;
 long ru_nsignals;
 long ru_nvcsw;
 long ru_nivcsw;
};
typedef void *rusage_info_t;
struct rusage_info_v0 {
 uint8_t ri_uuid[16];
 uint64_t ri_user_time;
 uint64_t ri_system_time;
 uint64_t ri_pkg_idle_wkups;
 uint64_t ri_interrupt_wkups;
 uint64_t ri_pageins;
 uint64_t ri_wired_size;
 uint64_t ri_resident_size;
 uint64_t ri_phys_footprint;
 uint64_t ri_proc_start_abstime;
 uint64_t ri_proc_exit_abstime;
};
struct rusage_info_v1 {
 uint8_t ri_uuid[16];
 uint64_t ri_user_time;
 uint64_t ri_system_time;
 uint64_t ri_pkg_idle_wkups;
 uint64_t ri_interrupt_wkups;
 uint64_t ri_pageins;
 uint64_t ri_wired_size;
 uint64_t ri_resident_size;
 uint64_t ri_phys_footprint;
 uint64_t ri_proc_start_abstime;
 uint64_t ri_proc_exit_abstime;
 uint64_t ri_child_user_time;
 uint64_t ri_child_system_time;
 uint64_t ri_child_pkg_idle_wkups;
 uint64_t ri_child_interrupt_wkups;
 uint64_t ri_child_pageins;
 uint64_t ri_child_elapsed_abstime;
};
struct rusage_info_v2 {
 uint8_t ri_uuid[16];
 uint64_t ri_user_time;
 uint64_t ri_system_time;
 uint64_t ri_pkg_idle_wkups;
 uint64_t ri_interrupt_wkups;
 uint64_t ri_pageins;
 uint64_t ri_wired_size;
 uint64_t ri_resident_size;
 uint64_t ri_phys_footprint;
 uint64_t ri_proc_start_abstime;
 uint64_t ri_proc_exit_abstime;
 uint64_t ri_child_user_time;
 uint64_t ri_child_system_time;
 uint64_t ri_child_pkg_idle_wkups;
 uint64_t ri_child_interrupt_wkups;
 uint64_t ri_child_pageins;
 uint64_t ri_child_elapsed_abstime;
 uint64_t ri_diskio_bytesread;
 uint64_t ri_diskio_byteswritten;
};
struct rusage_info_v3 {
 uint8_t ri_uuid[16];
 uint64_t ri_user_time;
 uint64_t ri_system_time;
 uint64_t ri_pkg_idle_wkups;
 uint64_t ri_interrupt_wkups;
 uint64_t ri_pageins;
 uint64_t ri_wired_size;
 uint64_t ri_resident_size;
 uint64_t ri_phys_footprint;
 uint64_t ri_proc_start_abstime;
 uint64_t ri_proc_exit_abstime;
 uint64_t ri_child_user_time;
 uint64_t ri_child_system_time;
 uint64_t ri_child_pkg_idle_wkups;
 uint64_t ri_child_interrupt_wkups;
 uint64_t ri_child_pageins;
 uint64_t ri_child_elapsed_abstime;
 uint64_t ri_diskio_bytesread;
 uint64_t ri_diskio_byteswritten;
 uint64_t ri_cpu_time_qos_default;
 uint64_t ri_cpu_time_qos_maintenance;
 uint64_t ri_cpu_time_qos_background;
 uint64_t ri_cpu_time_qos_utility;
 uint64_t ri_cpu_time_qos_legacy;
 uint64_t ri_cpu_time_qos_user_initiated;
 uint64_t ri_cpu_time_qos_user_interactive;
 uint64_t ri_billed_system_time;
 uint64_t ri_serviced_system_time;
};
typedef struct rusage_info_v3 rusage_info_current;
struct rlimit {
 rlim_t rlim_cur;
 rlim_t rlim_max;
};
struct proc_rlimit_control_wakeupmon {
 uint32_t wm_flags;
 int32_t wm_rate;
};

int getpriority(int, id_t);
int getiopolicy_np(int, int) ;
int getrlimit(int, struct rlimit *) __asm("_" "getrlimit" "$UNIX2003");
int getrusage(int, struct rusage *);
int setpriority(int, id_t, int);
int setiopolicy_np(int, int, int) ;
int setrlimit(int, const struct rlimit *) __asm("_" "setrlimit" "$UNIX2003");

static inline
__uint16_t
_OSSwapInt16(
    __uint16_t _data
)
{
    return ((__uint16_t)((_data << 8) | (_data >> 8)));
}
static inline
__uint32_t
_OSSwapInt32(
    __uint32_t _data
)
{
    __asm__ ("bswap   %0" : "+r" (_data));
    return _data;
}
static inline
__uint64_t
_OSSwapInt64(
    __uint64_t _data
)
{
    __asm__ ("bswap   %%eax\n\t"
             "bswap   %%edx\n\t"
             "xchgl   %%eax, %%edx"
             : "+A" (_data));
    return _data;
}
union wait {
 int w_status;
 struct {
  unsigned int w_Termsig:7,
    w_Coredump:1,
    w_Retcode:8,
    w_Filler:16;
 } w_T;
 struct {
  unsigned int w_Stopval:8,
    w_Stopsig:8,
    w_Filler:16;
 } w_S;
};

pid_t wait(int *) __asm("_" "wait" "$UNIX2003");
pid_t waitpid(pid_t, int *, int) __asm("_" "waitpid" "$UNIX2003");
int waitid(idtype_t, id_t, siginfo_t *, int) __asm("_" "waitid" "$UNIX2003");
pid_t wait3(int *, int, struct rusage *);
pid_t wait4(pid_t, int *, int, struct rusage *);


void *alloca(size_t);

typedef __darwin_ct_rune_t ct_rune_t;
typedef __darwin_rune_t rune_t;
typedef __darwin_wchar_t wchar_t;
typedef struct {
 int quot;
 int rem;
} div_t;
typedef struct {
 long quot;
 long rem;
} ldiv_t;
typedef struct {
 long long quot;
 long long rem;
} lldiv_t;
extern int __mb_cur_max;

void abort(void) __attribute__((noreturn));
int abs(int) __attribute__((const));
int atexit(void (*)(void));
double atof(const char *);
int atoi(const char *);
long atol(const char *);
long long
  atoll(const char *);
void *bsearch(const void *, const void *, size_t,
     size_t, int (*)(const void *, const void *));
void *calloc(size_t, size_t);
div_t div(int, int) __attribute__((const));
void exit(int) __attribute__((noreturn));
void free(void *);
char *getenv(const char *);
long labs(long) __attribute__((const));
ldiv_t ldiv(long, long) __attribute__((const));
long long
  llabs(long long);
lldiv_t lldiv(long long, long long);
void *malloc(size_t);
int mblen(const char *, size_t);
size_t mbstowcs(wchar_t * restrict , const char * restrict, size_t);
int mbtowc(wchar_t * restrict, const char * restrict, size_t);
int posix_memalign(void **, size_t, size_t) ;
void qsort(void *, size_t, size_t,
     int (*)(const void *, const void *));
int rand(void);
void *realloc(void *, size_t);
void srand(unsigned);
double strtod(const char *, char **) __asm("_" "strtod" "$UNIX2003");
float strtof(const char *, char **) __asm("_" "strtof" "$UNIX2003");
long strtol(const char *, char **, int);
long double
  strtold(const char *, char **);
long long
  strtoll(const char *, char **, int);
unsigned long
  strtoul(const char *, char **, int);
unsigned long long
  strtoull(const char *, char **, int);
int system(const char *) __asm("_" "system" "$UNIX2003") ;
size_t wcstombs(char * restrict, const wchar_t * restrict, size_t);
int wctomb(char *, wchar_t);
void _Exit(int) __attribute__((noreturn));
long a64l(const char *);
double drand48(void);
char *ecvt(double, int, int *restrict, int *restrict);
double erand48(unsigned short[3]);
char *fcvt(double, int, int *restrict, int *restrict);
char *gcvt(double, int, char *);
int getsubopt(char **, char * const *, char **);
int grantpt(int);
char *initstate(unsigned, char *, size_t);
long jrand48(unsigned short[3]);
char *l64a(long);
void lcong48(unsigned short[7]);
long lrand48(void);
char *mktemp(char *);
int mkstemp(char *);
long mrand48(void);
long nrand48(unsigned short[3]);
int posix_openpt(int);
char *ptsname(int);
int putenv(char *) __asm("_" "putenv" "$UNIX2003");
long random(void);
int rand_r(unsigned *);
char *realpath(const char * restrict, char * restrict) __asm("_" "realpath" "$DARWIN_EXTSN");
unsigned short
 *seed48(unsigned short[3]);
int setenv(const char *, const char *, int) __asm("_" "setenv" "$UNIX2003");
void setkey(const char *) __asm("_" "setkey" "$UNIX2003");
char *setstate(const char *);
void srand48(long);
void srandom(unsigned);
int unlockpt(int);
int unsetenv(const char *) __asm("_" "unsetenv" "$UNIX2003");
typedef unsigned char u_int8_t;
typedef unsigned short u_int16_t;
typedef unsigned int u_int32_t;
typedef unsigned long long u_int64_t;
typedef int32_t register_t;
typedef u_int64_t user_addr_t;
typedef u_int64_t user_size_t;
typedef int64_t user_ssize_t;
typedef int64_t user_long_t;
typedef u_int64_t user_ulong_t;
typedef int64_t user_time_t;
typedef int64_t user_off_t;
typedef u_int64_t syscall_arg_t;
typedef __darwin_dev_t dev_t;
typedef __darwin_mode_t mode_t;
u_int32_t arc4random(void);
void arc4random_addrandom(unsigned char * , int );
void arc4random_buf(void * , size_t ) ;
void arc4random_stir(void);
u_int32_t
  arc4random_uniform(u_int32_t ) ;
char *cgetcap(char *, const char *, int);
int cgetclose(void);
int cgetent(char **, char **, const char *);
int cgetfirst(char **, char **);
int cgetmatch(const char *, const char *);
int cgetnext(char **, char **);
int cgetnum(char *, const char *, long *);
int cgetset(const char *);
int cgetstr(char *, const char *, char **);
int cgetustr(char *, const char *, char **);
int daemon(int, int) __asm("_" "daemon" "$1050") __attribute__((deprecated));
char *devname(dev_t, mode_t);
char *devname_r(dev_t, mode_t, char *buf, int len);
char *getbsize(int *, long *);
int getloadavg(double [], int);
const char
 *getprogname(void);
int heapsort(void *, size_t, size_t,
     int (*)(const void *, const void *));
int mergesort(void *, size_t, size_t,
     int (*)(const void *, const void *));
void psort(void *, size_t, size_t,
     int (*)(const void *, const void *)) ;
void psort_r(void *, size_t, size_t, void *,
     int (*)(void *, const void *, const void *)) ;
void qsort_r(void *, size_t, size_t, void *,
     int (*)(void *, const void *, const void *));
int radixsort(const unsigned char **, int, const unsigned char *,
     unsigned);
void setprogname(const char *);
int sradixsort(const unsigned char **, int, const unsigned char *,
     unsigned);
void sranddev(void);
void srandomdev(void);
void *reallocf(void *, size_t);
long long
  strtoq(const char *, char **, int);
unsigned long long
  strtouq(const char *, char **, int);
extern char *suboptarg;
void *valloc(size_t);


void __assert_rtn(const char *, const char *, int, const char *) __attribute__((noreturn));


void *memchr(const void *, int, size_t);
int memcmp(const void *, const void *, size_t);
void *memcpy(void *, const void *, size_t);
void *memmove(void *, const void *, size_t);
void *memset(void *, int, size_t);
char *strcat(char *, const char *);
char *strchr(const char *, int);
int strcmp(const char *, const char *);
int strcoll(const char *, const char *);
char *strcpy(char *, const char *);
size_t strcspn(const char *, const char *);
char *strerror(int) __asm("_" "strerror" "$UNIX2003");
size_t strlen(const char *);
char *strncat(char *, const char *, size_t);
int strncmp(const char *, const char *, size_t);
char *strncpy(char *, const char *, size_t);
char *strpbrk(const char *, const char *);
char *strrchr(const char *, int);
size_t strspn(const char *, const char *);
char *strstr(const char *, const char *);
char *strtok(char *, const char *);
size_t strxfrm(char *, const char *, size_t);


char *strtok_r(char *, const char *, char **);


int strerror_r(int, char *, size_t);
char *strdup(const char *);
void *memccpy(void *, const void *, int, size_t);


char *stpcpy(char *, const char *);
char *stpncpy(char *, const char *, size_t) ;
char *strndup(const char *, size_t) ;
size_t strnlen(const char *, size_t) ;
char *strsignal(int sig);

typedef __darwin_size_t rsize_t;
typedef int errno_t;

errno_t memset_s(void *, rsize_t, int, rsize_t) ;


void *memmem(const void *, size_t, const void *, size_t) ;
void memset_pattern4(void *, const void *, size_t) ;
void memset_pattern8(void *, const void *, size_t) ;
void memset_pattern16(void *, const void *, size_t) ;
char *strcasestr(const char *, const char *);
char *strnstr(const char *, const char *, size_t);
size_t strlcat(char *, const char *, size_t);
size_t strlcpy(char *, const char *, size_t);
void strmode(int, char *);
char *strsep(char **, const char *);
void swab(const void * restrict, void * restrict, ssize_t);


int bcmp(const void *, const void *, size_t) ;
void bcopy(const void *, void *, size_t) ;
void bzero(void *, size_t) ;
char *index(const char *, int) ;
char *rindex(const char *, int) ;
int ffs(int);
int strcasecmp(const char *, const char *);
int strncasecmp(const char *, const char *, size_t);


int ffsl(long) ;
int ffsll(long long) ;
int fls(int) ;
int flsl(long) ;
int flsll(long long) ;

typedef int MPI_Datatype;
typedef int MPI_Comm;
typedef int MPI_Group;
typedef int MPI_Win;
typedef struct ADIOI_FileD *MPI_File;
typedef int MPI_Op;
typedef enum MPIR_Win_flavor {
    MPI_WIN_FLAVOR_CREATE = 1,
    MPI_WIN_FLAVOR_ALLOCATE = 2,
    MPI_WIN_FLAVOR_DYNAMIC = 3,
    MPI_WIN_FLAVOR_SHARED = 4
} MPIR_Win_flavor_t;
typedef enum MPIR_Win_model {
    MPI_WIN_SEPARATE = 1,
    MPI_WIN_UNIFIED = 2
} MPIR_Win_model_t;
typedef enum MPIR_Topo_type { MPI_GRAPH=1, MPI_CART=2, MPI_DIST_GRAPH=3 } MPIR_Topo_type;
extern int * const MPI_UNWEIGHTED;
extern int * const MPI_WEIGHTS_EMPTY;
typedef void (MPI_Handler_function) ( MPI_Comm *, int *, ... );
typedef int (MPI_Comm_copy_attr_function)(MPI_Comm, int, void *, void *,
       void *, int *);
typedef int (MPI_Comm_delete_attr_function)(MPI_Comm, int, void *, void *);
typedef int (MPI_Type_copy_attr_function)(MPI_Datatype, int, void *, void *,
       void *, int *);
typedef int (MPI_Type_delete_attr_function)(MPI_Datatype, int, void *, void *);
typedef int (MPI_Win_copy_attr_function)(MPI_Win, int, void *, void *, void *,
      int *);
typedef int (MPI_Win_delete_attr_function)(MPI_Win, int, void *, void *);
typedef void (MPI_Comm_errhandler_function)(MPI_Comm *, int *, ...);
typedef void (MPI_File_errhandler_function)(MPI_File *, int *, ...);
typedef void (MPI_Win_errhandler_function)(MPI_Win *, int *, ...);
typedef MPI_Comm_errhandler_function MPI_Comm_errhandler_fn;
typedef MPI_File_errhandler_function MPI_File_errhandler_fn;
typedef MPI_Win_errhandler_function MPI_Win_errhandler_fn;
typedef int MPI_Errhandler;
typedef int MPI_Request;
typedef int MPI_Message;
typedef void (MPI_User_function) ( void *, void *, int *, MPI_Datatype * );
typedef int (MPI_Copy_function) ( MPI_Comm, int, void *, void *, void *, int * );
typedef int (MPI_Delete_function) ( MPI_Comm, int, void *, void * );
enum MPIR_Combiner_enum {
    MPI_COMBINER_NAMED = 1,
    MPI_COMBINER_DUP = 2,
    MPI_COMBINER_CONTIGUOUS = 3,
    MPI_COMBINER_VECTOR = 4,
    MPI_COMBINER_HVECTOR_INTEGER = 5,
    MPI_COMBINER_HVECTOR = 6,
    MPI_COMBINER_INDEXED = 7,
    MPI_COMBINER_HINDEXED_INTEGER = 8,
    MPI_COMBINER_HINDEXED = 9,
    MPI_COMBINER_INDEXED_BLOCK = 10,
    MPI_COMBINER_STRUCT_INTEGER = 11,
    MPI_COMBINER_STRUCT = 12,
    MPI_COMBINER_SUBARRAY = 13,
    MPI_COMBINER_DARRAY = 14,
    MPI_COMBINER_F90_REAL = 15,
    MPI_COMBINER_F90_COMPLEX = 16,
    MPI_COMBINER_F90_INTEGER = 17,
    MPI_COMBINER_RESIZED = 18,
    MPI_COMBINER_HINDEXED_BLOCK = 19
};
typedef int MPI_Info;
typedef long MPI_Aint;
typedef int MPI_Fint;
typedef long long MPI_Count;
typedef long long MPI_Offset;
typedef struct MPI_Status {
    int count_lo;
    int count_hi_and_cancelled;
    int MPI_SOURCE;
    int MPI_TAG;
    int MPI_ERROR;
} MPI_Status;
struct MPIR_T_enum_s;
struct MPIR_T_cvar_handle_s;
struct MPIR_T_pvar_handle_s;
struct MPIR_T_pvar_session_s;
typedef struct MPIR_T_enum_s * MPI_T_enum;
typedef struct MPIR_T_cvar_handle_s * MPI_T_cvar_handle;
typedef struct MPIR_T_pvar_handle_s * MPI_T_pvar_handle;
typedef struct MPIR_T_pvar_session_s * MPI_T_pvar_session;
extern struct MPIR_T_pvar_handle_s * const MPI_T_PVAR_ALL_HANDLES;
typedef enum MPIR_T_verbosity_t {
    MPIX_T_VERBOSITY_INVALID = 0,
    MPI_T_VERBOSITY_USER_BASIC = 221,
    MPI_T_VERBOSITY_USER_DETAIL,
    MPI_T_VERBOSITY_USER_ALL,
    MPI_T_VERBOSITY_TUNER_BASIC,
    MPI_T_VERBOSITY_TUNER_DETAIL,
    MPI_T_VERBOSITY_TUNER_ALL,
    MPI_T_VERBOSITY_MPIDEV_BASIC,
    MPI_T_VERBOSITY_MPIDEV_DETAIL,
    MPI_T_VERBOSITY_MPIDEV_ALL
} MPIR_T_verbosity_t;
typedef enum MPIR_T_bind_t {
    MPIX_T_BIND_INVALID = 0,
    MPI_T_BIND_NO_OBJECT = 9700,
    MPI_T_BIND_MPI_COMM,
    MPI_T_BIND_MPI_DATATYPE,
    MPI_T_BIND_MPI_ERRHANDLER,
    MPI_T_BIND_MPI_FILE,
    MPI_T_BIND_MPI_GROUP,
    MPI_T_BIND_MPI_OP,
    MPI_T_BIND_MPI_REQUEST,
    MPI_T_BIND_MPI_WIN,
    MPI_T_BIND_MPI_MESSAGE,
    MPI_T_BIND_MPI_INFO
} MPIR_T_bind_t;
typedef enum MPIR_T_scope_t {
    MPIX_T_SCOPE_INVALID = 0,
    MPI_T_SCOPE_CONSTANT = 60438,
    MPI_T_SCOPE_READONLY,
    MPI_T_SCOPE_LOCAL,
    MPI_T_SCOPE_GROUP,
    MPI_T_SCOPE_GROUP_EQ,
    MPI_T_SCOPE_ALL,
    MPI_T_SCOPE_ALL_EQ
} MPIR_T_scope_t;
typedef enum MPIR_T_pvar_class_t {
    MPIX_T_PVAR_CLASS_INVALID = 0,
    MPIR_T_PVAR_CLASS_FIRST = 240,
    MPI_T_PVAR_CLASS_STATE = MPIR_T_PVAR_CLASS_FIRST,
    MPI_T_PVAR_CLASS_LEVEL,
    MPI_T_PVAR_CLASS_SIZE,
    MPI_T_PVAR_CLASS_PERCENTAGE,
    MPI_T_PVAR_CLASS_HIGHWATERMARK,
    MPI_T_PVAR_CLASS_LOWWATERMARK,
    MPI_T_PVAR_CLASS_COUNTER,
    MPI_T_PVAR_CLASS_AGGREGATE,
    MPI_T_PVAR_CLASS_TIMER,
    MPI_T_PVAR_CLASS_GENERIC,
    MPIR_T_PVAR_CLASS_LAST,
    MPIR_T_PVAR_CLASS_NUMBER = MPIR_T_PVAR_CLASS_LAST - MPIR_T_PVAR_CLASS_FIRST
} MPIR_T_pvar_class_t;
extern MPI_Fint * MPI_F_STATUS_IGNORE;
extern MPI_Fint * MPI_F_STATUSES_IGNORE;
typedef struct {
    MPI_Fint count_lo;
    MPI_Fint count_hi_and_cancelled;
    MPI_Fint MPI_SOURCE;
    MPI_Fint MPI_TAG;
    MPI_Fint MPI_ERROR;
} MPI_F08_Status;
extern MPI_F08_Status MPIR_F08_MPI_STATUS_IGNORE_OBJ;
extern MPI_F08_Status MPIR_F08_MPI_STATUSES_IGNORE_OBJ[1];
extern int MPIR_F08_MPI_IN_PLACE;
extern int MPIR_F08_MPI_BOTTOM;
extern MPI_F08_Status *MPI_F08_STATUS_IGNORE;
extern MPI_F08_Status *MPI_F08_STATUSES_IGNORE;
typedef int (MPI_Grequest_cancel_function)(void *, int);
typedef int (MPI_Grequest_free_function)(void *);
typedef int (MPI_Grequest_query_function)(void *, MPI_Status *);
typedef int (MPIX_Grequest_poll_function)(void *, MPI_Status *);
typedef int (MPIX_Grequest_wait_function)(int, void **, double, MPI_Status *);
typedef int (MPI_Datarep_conversion_function)(void *, MPI_Datatype, int,
             void *, MPI_Offset, void *);
typedef int (MPI_Datarep_extent_function)(MPI_Datatype datatype, MPI_Aint *,
                      void *);
int MPI_Send(const void *buf, int count, MPI_Datatype datatype, int dest, int tag,
             MPI_Comm comm) ;
int MPI_Recv(void *buf, int count, MPI_Datatype datatype, int source, int tag,
             MPI_Comm comm, MPI_Status *status) ;
int MPI_Get_count(const MPI_Status *status, MPI_Datatype datatype, int *count);
int MPI_Bsend(const void *buf, int count, MPI_Datatype datatype, int dest, int tag,
              MPI_Comm comm) ;
int MPI_Ssend(const void *buf, int count, MPI_Datatype datatype, int dest, int tag,
              MPI_Comm comm) ;
int MPI_Rsend(const void *buf, int count, MPI_Datatype datatype, int dest, int tag,
              MPI_Comm comm) ;
int MPI_Buffer_attach(void *buffer, int size);
int MPI_Buffer_detach(void *buffer_addr, int *size);
int MPI_Isend(const void *buf, int count, MPI_Datatype datatype, int dest, int tag,
              MPI_Comm comm, MPI_Request *request) ;
int MPI_Ibsend(const void *buf, int count, MPI_Datatype datatype, int dest, int tag,
               MPI_Comm comm, MPI_Request *request) ;
int MPI_Issend(const void *buf, int count, MPI_Datatype datatype, int dest, int tag,
               MPI_Comm comm, MPI_Request *request) ;
int MPI_Irsend(const void *buf, int count, MPI_Datatype datatype, int dest, int tag,
               MPI_Comm comm, MPI_Request *request) ;
int MPI_Irecv(void *buf, int count, MPI_Datatype datatype, int source, int tag,
              MPI_Comm comm, MPI_Request *request) ;
int MPI_Wait(MPI_Request *request, MPI_Status *status);
int MPI_Test(MPI_Request *request, int *flag, MPI_Status *status);
int MPI_Request_free(MPI_Request *request);
int MPI_Waitany(int count, MPI_Request array_of_requests[], int *indx, MPI_Status *status);
int MPI_Testany(int count, MPI_Request array_of_requests[], int *indx, int *flag,
                MPI_Status *status);
int MPI_Waitall(int count, MPI_Request array_of_requests[], MPI_Status array_of_statuses[]);
int MPI_Testall(int count, MPI_Request array_of_requests[], int *flag,
                MPI_Status array_of_statuses[]);
int MPI_Waitsome(int incount, MPI_Request array_of_requests[], int *outcount,
                 int array_of_indices[], MPI_Status array_of_statuses[]);
int MPI_Testsome(int incount, MPI_Request array_of_requests[], int *outcount,
                 int array_of_indices[], MPI_Status array_of_statuses[]);
int MPI_Iprobe(int source, int tag, MPI_Comm comm, int *flag, MPI_Status *status);
int MPI_Probe(int source, int tag, MPI_Comm comm, MPI_Status *status);
int MPI_Cancel(MPI_Request *request);
int MPI_Test_cancelled(const MPI_Status *status, int *flag);
int MPI_Send_init(const void *buf, int count, MPI_Datatype datatype, int dest, int tag,
                  MPI_Comm comm, MPI_Request *request) ;
int MPI_Bsend_init(const void *buf, int count, MPI_Datatype datatype, int dest, int tag,
                   MPI_Comm comm, MPI_Request *request) ;
int MPI_Ssend_init(const void *buf, int count, MPI_Datatype datatype, int dest, int tag,
                   MPI_Comm comm, MPI_Request *request) ;
int MPI_Rsend_init(const void *buf, int count, MPI_Datatype datatype, int dest, int tag,
                   MPI_Comm comm, MPI_Request *request) ;
int MPI_Recv_init(void *buf, int count, MPI_Datatype datatype, int source, int tag,
                  MPI_Comm comm, MPI_Request *request) ;
int MPI_Start(MPI_Request *request);
int MPI_Startall(int count, MPI_Request array_of_requests[]);
int MPI_Sendrecv(const void *sendbuf, int sendcount, MPI_Datatype sendtype, int dest,
                 int sendtag, void *recvbuf, int recvcount, MPI_Datatype recvtype,
                 int source, int recvtag, MPI_Comm comm, MPI_Status *status)
                 ;
int MPI_Sendrecv_replace(void *buf, int count, MPI_Datatype datatype, int dest,
                         int sendtag, int source, int recvtag, MPI_Comm comm,
                         MPI_Status *status) ;
int MPI_Type_contiguous(int count, MPI_Datatype oldtype, MPI_Datatype *newtype);
int MPI_Type_vector(int count, int blocklength, int stride, MPI_Datatype oldtype,
                    MPI_Datatype *newtype);
int MPI_Type_hvector(int count, int blocklength, MPI_Aint stride, MPI_Datatype oldtype,
                     MPI_Datatype *newtype);
int MPI_Type_indexed(int count, const int *array_of_blocklengths,
                     const int *array_of_displacements, MPI_Datatype oldtype,
                     MPI_Datatype *newtype);
int MPI_Type_hindexed(int count, const int *array_of_blocklengths,
                      const MPI_Aint *array_of_displacements, MPI_Datatype oldtype,
                      MPI_Datatype *newtype);
int MPI_Type_struct(int count, const int *array_of_blocklengths,
                    const MPI_Aint *array_of_displacements,
                    const MPI_Datatype *array_of_types, MPI_Datatype *newtype);
int MPI_Address(const void *location, MPI_Aint *address);
int MPI_Type_extent(MPI_Datatype datatype, MPI_Aint *extent);
int MPI_Type_size(MPI_Datatype datatype, int *size);
int MPI_Type_lb(MPI_Datatype datatype, MPI_Aint *displacement);
int MPI_Type_ub(MPI_Datatype datatype, MPI_Aint *displacement);
int MPI_Type_commit(MPI_Datatype *datatype);
int MPI_Type_free(MPI_Datatype *datatype);
int MPI_Get_elements(const MPI_Status *status, MPI_Datatype datatype, int *count);
int MPI_Pack(const void *inbuf, int incount, MPI_Datatype datatype, void *outbuf,
             int outsize, int *position, MPI_Comm comm) ;
int MPI_Unpack(const void *inbuf, int insize, int *position, void *outbuf, int outcount,
               MPI_Datatype datatype, MPI_Comm comm) ;
int MPI_Pack_size(int incount, MPI_Datatype datatype, MPI_Comm comm, int *size);
int MPI_Barrier(MPI_Comm comm);
int MPI_Bcast(void *buffer, int count, MPI_Datatype datatype, int root, MPI_Comm comm)
              ;
int MPI_Gather(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf,
               int recvcount, MPI_Datatype recvtype, int root, MPI_Comm comm)
               ;
int MPI_Gatherv(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf,
                const int *recvcounts, const int *displs, MPI_Datatype recvtype, int root,
                MPI_Comm comm)
                ;
int MPI_Scatter(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf,
                int recvcount, MPI_Datatype recvtype, int root, MPI_Comm comm)
                ;
int MPI_Scatterv(const void *sendbuf, const int *sendcounts, const int *displs,
                 MPI_Datatype sendtype, void *recvbuf, int recvcount, MPI_Datatype recvtype,
                 int root, MPI_Comm comm)
                 ;
int MPI_Allgather(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf,
                  int recvcount, MPI_Datatype recvtype, MPI_Comm comm)
                  ;
int MPI_Allgatherv(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf,
                   const int *recvcounts, const int *displs, MPI_Datatype recvtype, MPI_Comm comm)
                   ;
int MPI_Alltoall(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf,
                 int recvcount, MPI_Datatype recvtype, MPI_Comm comm)
                 ;
int MPI_Alltoallv(const void *sendbuf, const int *sendcounts, const int *sdispls,
                  MPI_Datatype sendtype, void *recvbuf, const int *recvcounts,
                  const int *rdispls, MPI_Datatype recvtype, MPI_Comm comm)
                  ;
int MPI_Alltoallw(const void *sendbuf, const int sendcounts[], const int sdispls[],
                  const MPI_Datatype sendtypes[], void *recvbuf, const int recvcounts[],
                  const int rdispls[], const MPI_Datatype recvtypes[], MPI_Comm comm);
int MPI_Exscan(const void *sendbuf, void *recvbuf, int count, MPI_Datatype datatype,
               MPI_Op op, MPI_Comm comm)
               ;
int MPI_Reduce(const void *sendbuf, void *recvbuf, int count, MPI_Datatype datatype,
               MPI_Op op, int root, MPI_Comm comm)
               ;
int MPI_Op_create(MPI_User_function *user_fn, int commute, MPI_Op *op);
int MPI_Op_free(MPI_Op *op);
int MPI_Allreduce(const void *sendbuf, void *recvbuf, int count, MPI_Datatype datatype,
                  MPI_Op op, MPI_Comm comm)
                  ;
int MPI_Reduce_scatter(const void *sendbuf, void *recvbuf, const int recvcounts[],
                       MPI_Datatype datatype, MPI_Op op, MPI_Comm comm)
                       ;
int MPI_Scan(const void *sendbuf, void *recvbuf, int count, MPI_Datatype datatype, MPI_Op op,
             MPI_Comm comm)
             ;
int MPI_Group_size(MPI_Group group, int *size);
int MPI_Group_rank(MPI_Group group, int *rank);
int MPI_Group_translate_ranks(MPI_Group group1, int n, const int ranks1[], MPI_Group group2,
                              int ranks2[]);
int MPI_Group_compare(MPI_Group group1, MPI_Group group2, int *result);
int MPI_Comm_group(MPI_Comm comm, MPI_Group *group);
int MPI_Group_union(MPI_Group group1, MPI_Group group2, MPI_Group *newgroup);
int MPI_Group_intersection(MPI_Group group1, MPI_Group group2, MPI_Group *newgroup);
int MPI_Group_difference(MPI_Group group1, MPI_Group group2, MPI_Group *newgroup);
int MPI_Group_incl(MPI_Group group, int n, const int ranks[], MPI_Group *newgroup);
int MPI_Group_excl(MPI_Group group, int n, const int ranks[], MPI_Group *newgroup);
int MPI_Group_range_incl(MPI_Group group, int n, int ranges[][3], MPI_Group *newgroup);
int MPI_Group_range_excl(MPI_Group group, int n, int ranges[][3], MPI_Group *newgroup);
int MPI_Group_free(MPI_Group *group);
int MPI_Comm_size(MPI_Comm comm, int *size);
int MPI_Comm_rank(MPI_Comm comm, int *rank);
int MPI_Comm_compare(MPI_Comm comm1, MPI_Comm comm2, int *result);
int MPI_Comm_dup(MPI_Comm comm, MPI_Comm *newcomm);
int MPI_Comm_dup_with_info(MPI_Comm comm, MPI_Info info, MPI_Comm *newcomm);
int MPI_Comm_create(MPI_Comm comm, MPI_Group group, MPI_Comm *newcomm);
int MPI_Comm_split(MPI_Comm comm, int color, int key, MPI_Comm *newcomm);
int MPI_Comm_free(MPI_Comm *comm);
int MPI_Comm_test_inter(MPI_Comm comm, int *flag);
int MPI_Comm_remote_size(MPI_Comm comm, int *size);
int MPI_Comm_remote_group(MPI_Comm comm, MPI_Group *group);
int MPI_Intercomm_create(MPI_Comm local_comm, int local_leader, MPI_Comm peer_comm,
                         int remote_leader, int tag, MPI_Comm *newintercomm);
int MPI_Intercomm_merge(MPI_Comm intercomm, int high, MPI_Comm *newintracomm);
int MPI_Keyval_create(MPI_Copy_function *copy_fn, MPI_Delete_function *delete_fn,
                      int *keyval, void *extra_state);
int MPI_Keyval_free(int *keyval);
int MPI_Attr_put(MPI_Comm comm, int keyval, void *attribute_val);
int MPI_Attr_get(MPI_Comm comm, int keyval, void *attribute_val, int *flag);
int MPI_Attr_delete(MPI_Comm comm, int keyval);
int MPI_Topo_test(MPI_Comm comm, int *status);
int MPI_Cart_create(MPI_Comm comm_old, int ndims, const int dims[], const int periods[],
                    int reorder, MPI_Comm *comm_cart);
int MPI_Dims_create(int nnodes, int ndims, int dims[]);
int MPI_Graph_create(MPI_Comm comm_old, int nnodes, const int indx[], const int edges[],
                     int reorder, MPI_Comm *comm_graph);
int MPI_Graphdims_get(MPI_Comm comm, int *nnodes, int *nedges);
int MPI_Graph_get(MPI_Comm comm, int maxindex, int maxedges, int indx[], int edges[]);
int MPI_Cartdim_get(MPI_Comm comm, int *ndims);
int MPI_Cart_get(MPI_Comm comm, int maxdims, int dims[], int periods[], int coords[]);
int MPI_Cart_rank(MPI_Comm comm, const int coords[], int *rank);
int MPI_Cart_coords(MPI_Comm comm, int rank, int maxdims, int coords[]);
int MPI_Graph_neighbors_count(MPI_Comm comm, int rank, int *nneighbors);
int MPI_Graph_neighbors(MPI_Comm comm, int rank, int maxneighbors, int neighbors[]);
int MPI_Cart_shift(MPI_Comm comm, int direction, int disp, int *rank_source, int *rank_dest);
int MPI_Cart_sub(MPI_Comm comm, const int remain_dims[], MPI_Comm *newcomm);
int MPI_Cart_map(MPI_Comm comm, int ndims, const int dims[], const int periods[], int *newrank);
int MPI_Graph_map(MPI_Comm comm, int nnodes, const int indx[], const int edges[], int *newrank);
int MPI_Get_processor_name(char *name, int *resultlen);
int MPI_Get_version(int *version, int *subversion);
int MPI_Get_library_version(char *version, int *resultlen);
int MPI_Errhandler_create(MPI_Handler_function *function, MPI_Errhandler *errhandler);
int MPI_Errhandler_set(MPI_Comm comm, MPI_Errhandler errhandler);
int MPI_Errhandler_get(MPI_Comm comm, MPI_Errhandler *errhandler);
int MPI_Errhandler_free(MPI_Errhandler *errhandler);
int MPI_Error_string(int errorcode, char *string, int *resultlen);
int MPI_Error_class(int errorcode, int *errorclass);
double MPI_Wtime(void);
double MPI_Wtick(void);
int MPI_Init(int *argc, char ***argv);
int MPI_Finalize(void);
int MPI_Initialized(int *flag);
int MPI_Abort(MPI_Comm comm, int errorcode);
int MPI_Pcontrol(const int level, ...);
int MPIR_Dup_fn(MPI_Comm oldcomm, int keyval, void *extra_state, void *attribute_val_in,
               void *attribute_val_out, int *flag);
int MPI_Close_port(const char *port_name);
int MPI_Comm_accept(const char *port_name, MPI_Info info, int root, MPI_Comm comm,
                    MPI_Comm *newcomm);
int MPI_Comm_connect(const char *port_name, MPI_Info info, int root, MPI_Comm comm,
                     MPI_Comm *newcomm);
int MPI_Comm_disconnect(MPI_Comm *comm);
int MPI_Comm_get_parent(MPI_Comm *parent);
int MPI_Comm_join(int fd, MPI_Comm *intercomm);
int MPI_Comm_spawn(const char *command, char *argv[], int maxprocs, MPI_Info info, int root,
                   MPI_Comm comm, MPI_Comm *intercomm, int array_of_errcodes[]);
int MPI_Comm_spawn_multiple(int count, char *array_of_commands[], char **array_of_argv[],
                            const int array_of_maxprocs[], const MPI_Info array_of_info[],
                            int root, MPI_Comm comm, MPI_Comm *intercomm, int array_of_errcodes[]);
int MPI_Lookup_name(const char *service_name, MPI_Info info, char *port_name);
int MPI_Open_port(MPI_Info info, char *port_name);
int MPI_Publish_name(const char *service_name, MPI_Info info, const char *port_name);
int MPI_Unpublish_name(const char *service_name, MPI_Info info, const char *port_name);
int MPI_Comm_set_info(MPI_Comm comm, MPI_Info info);
int MPI_Comm_get_info(MPI_Comm comm, MPI_Info *info);
int MPI_Accumulate(const void *origin_addr, int origin_count, MPI_Datatype origin_datatype,
                   int target_rank, MPI_Aint target_disp, int target_count,
                   MPI_Datatype target_datatype, MPI_Op op, MPI_Win win)
                   ;
int MPI_Get(void *origin_addr, int origin_count, MPI_Datatype origin_datatype,
            int target_rank, MPI_Aint target_disp, int target_count,
            MPI_Datatype target_datatype, MPI_Win win) ;
int MPI_Put(const void *origin_addr, int origin_count, MPI_Datatype origin_datatype,
            int target_rank, MPI_Aint target_disp, int target_count,
            MPI_Datatype target_datatype, MPI_Win win) ;
int MPI_Win_complete(MPI_Win win);
int MPI_Win_create(void *base, MPI_Aint size, int disp_unit, MPI_Info info, MPI_Comm comm,
                   MPI_Win *win);
int MPI_Win_fence(int assert, MPI_Win win);
int MPI_Win_free(MPI_Win *win);
int MPI_Win_get_group(MPI_Win win, MPI_Group *group);
int MPI_Win_lock(int lock_type, int rank, int assert, MPI_Win win);
int MPI_Win_post(MPI_Group group, int assert, MPI_Win win);
int MPI_Win_start(MPI_Group group, int assert, MPI_Win win);
int MPI_Win_test(MPI_Win win, int *flag);
int MPI_Win_unlock(int rank, MPI_Win win);
int MPI_Win_wait(MPI_Win win);
int MPI_Win_allocate(MPI_Aint size, int disp_unit, MPI_Info info, MPI_Comm comm, void *baseptr,
                     MPI_Win *win);
int MPI_Win_allocate_shared(MPI_Aint size, int disp_unit, MPI_Info info, MPI_Comm comm,
                            void *baseptr, MPI_Win *win);
int MPI_Win_shared_query(MPI_Win win, int rank, MPI_Aint *size, int *disp_unit, void *baseptr);
int MPI_Win_create_dynamic(MPI_Info info, MPI_Comm comm, MPI_Win *win);
int MPI_Win_attach(MPI_Win win, void *base, MPI_Aint size);
int MPI_Win_detach(MPI_Win win, const void *base);
int MPI_Win_get_info(MPI_Win win, MPI_Info *info_used);
int MPI_Win_set_info(MPI_Win win, MPI_Info info);
int MPI_Get_accumulate(const void *origin_addr, int origin_count,
                        MPI_Datatype origin_datatype, void *result_addr, int result_count,
                        MPI_Datatype result_datatype, int target_rank, MPI_Aint target_disp,
                        int target_count, MPI_Datatype target_datatype, MPI_Op op, MPI_Win win)
                       
                        ;
int MPI_Fetch_and_op(const void *origin_addr, void *result_addr,
                      MPI_Datatype datatype, int target_rank, MPI_Aint target_disp,
                      MPI_Op op, MPI_Win win)
                      ;
int MPI_Compare_and_swap(const void *origin_addr, const void *compare_addr,
                          void *result_addr, MPI_Datatype datatype, int target_rank,
                          MPI_Aint target_disp, MPI_Win win)
                         
                         
                          ;
int MPI_Rput(const void *origin_addr, int origin_count,
              MPI_Datatype origin_datatype, int target_rank, MPI_Aint target_disp,
              int target_count, MPI_Datatype target_datatype, MPI_Win win,
              MPI_Request *request)
              ;
int MPI_Rget(void *origin_addr, int origin_count,
              MPI_Datatype origin_datatype, int target_rank, MPI_Aint target_disp,
              int target_count, MPI_Datatype target_datatype, MPI_Win win,
              MPI_Request *request)
              ;
int MPI_Raccumulate(const void *origin_addr, int origin_count,
                     MPI_Datatype origin_datatype, int target_rank, MPI_Aint target_disp,
                     int target_count, MPI_Datatype target_datatype, MPI_Op op, MPI_Win win,
                     MPI_Request *request)
                     ;
int MPI_Rget_accumulate(const void *origin_addr, int origin_count,
                         MPI_Datatype origin_datatype, void *result_addr, int result_count,
                         MPI_Datatype result_datatype, int target_rank, MPI_Aint target_disp,
                         int target_count, MPI_Datatype target_datatype, MPI_Op op, MPI_Win win,
                         MPI_Request *request)
                        
                         ;
int MPI_Win_lock_all(int assert, MPI_Win win);
int MPI_Win_unlock_all(MPI_Win win);
int MPI_Win_flush(int rank, MPI_Win win);
int MPI_Win_flush_all(MPI_Win win);
int MPI_Win_flush_local(int rank, MPI_Win win);
int MPI_Win_flush_local_all(MPI_Win win);
int MPI_Win_sync(MPI_Win win);
int MPI_Add_error_class(int *errorclass);
int MPI_Add_error_code(int errorclass, int *errorcode);
int MPI_Add_error_string(int errorcode, const char *string);
int MPI_Comm_call_errhandler(MPI_Comm comm, int errorcode);
int MPI_Comm_create_keyval(MPI_Comm_copy_attr_function *comm_copy_attr_fn,
                           MPI_Comm_delete_attr_function *comm_delete_attr_fn, int *comm_keyval,
                           void *extra_state);
int MPI_Comm_delete_attr(MPI_Comm comm, int comm_keyval);
int MPI_Comm_free_keyval(int *comm_keyval);
int MPI_Comm_get_attr(MPI_Comm comm, int comm_keyval, void *attribute_val, int *flag);
int MPI_Comm_get_name(MPI_Comm comm, char *comm_name, int *resultlen);
int MPI_Comm_set_attr(MPI_Comm comm, int comm_keyval, void *attribute_val);
int MPI_Comm_set_name(MPI_Comm comm, const char *comm_name);
int MPI_File_call_errhandler(MPI_File fh, int errorcode);
int MPI_Grequest_complete(MPI_Request request);
int MPI_Grequest_start(MPI_Grequest_query_function *query_fn, MPI_Grequest_free_function *free_fn,
                       MPI_Grequest_cancel_function *cancel_fn, void *extra_state,
                       MPI_Request *request);
int MPI_Init_thread(int *argc, char ***argv, int required, int *provided);
int MPI_Is_thread_main(int *flag);
int MPI_Query_thread(int *provided);
int MPI_Status_set_cancelled(MPI_Status *status, int flag);
int MPI_Status_set_elements(MPI_Status *status, MPI_Datatype datatype, int count);
int MPI_Type_create_keyval(MPI_Type_copy_attr_function *type_copy_attr_fn,
                           MPI_Type_delete_attr_function *type_delete_attr_fn,
                           int *type_keyval, void *extra_state);
int MPI_Type_delete_attr(MPI_Datatype datatype, int type_keyval);
int MPI_Type_dup(MPI_Datatype oldtype, MPI_Datatype *newtype);
int MPI_Type_free_keyval(int *type_keyval);
int MPI_Type_get_attr(MPI_Datatype datatype, int type_keyval, void *attribute_val, int *flag);
int MPI_Type_get_contents(MPI_Datatype datatype, int max_integers, int max_addresses,
                          int max_datatypes, int array_of_integers[],
                          MPI_Aint array_of_addresses[], MPI_Datatype array_of_datatypes[]);
int MPI_Type_get_envelope(MPI_Datatype datatype, int *num_integers, int *num_addresses,
                          int *num_datatypes, int *combiner);
int MPI_Type_get_name(MPI_Datatype datatype, char *type_name, int *resultlen);
int MPI_Type_set_attr(MPI_Datatype datatype, int type_keyval, void *attribute_val);
int MPI_Type_set_name(MPI_Datatype datatype, const char *type_name);
int MPI_Type_match_size(int typeclass, int size, MPI_Datatype *datatype);
int MPI_Win_call_errhandler(MPI_Win win, int errorcode);
int MPI_Win_create_keyval(MPI_Win_copy_attr_function *win_copy_attr_fn,
                          MPI_Win_delete_attr_function *win_delete_attr_fn, int *win_keyval,
                          void *extra_state);
int MPI_Win_delete_attr(MPI_Win win, int win_keyval);
int MPI_Win_free_keyval(int *win_keyval);
int MPI_Win_get_attr(MPI_Win win, int win_keyval, void *attribute_val, int *flag);
int MPI_Win_get_name(MPI_Win win, char *win_name, int *resultlen);
int MPI_Win_set_attr(MPI_Win win, int win_keyval, void *attribute_val);
int MPI_Win_set_name(MPI_Win win, const char *win_name);
int MPI_Alloc_mem(MPI_Aint size, MPI_Info info, void *baseptr);
int MPI_Comm_create_errhandler(MPI_Comm_errhandler_function *comm_errhandler_fn,
                               MPI_Errhandler *errhandler);
int MPI_Comm_get_errhandler(MPI_Comm comm, MPI_Errhandler *errhandler);
int MPI_Comm_set_errhandler(MPI_Comm comm, MPI_Errhandler errhandler);
int MPI_File_create_errhandler(MPI_File_errhandler_function *file_errhandler_fn,
                               MPI_Errhandler *errhandler);
int MPI_File_get_errhandler(MPI_File file, MPI_Errhandler *errhandler);
int MPI_File_set_errhandler(MPI_File file, MPI_Errhandler errhandler);
int MPI_Finalized(int *flag);
int MPI_Free_mem(void *base);
int MPI_Get_address(const void *location, MPI_Aint *address);
int MPI_Info_create(MPI_Info *info);
int MPI_Info_delete(MPI_Info info, const char *key);
int MPI_Info_dup(MPI_Info info, MPI_Info *newinfo);
int MPI_Info_free(MPI_Info *info);
int MPI_Info_get(MPI_Info info, const char *key, int valuelen, char *value, int *flag);
int MPI_Info_get_nkeys(MPI_Info info, int *nkeys);
int MPI_Info_get_nthkey(MPI_Info info, int n, char *key);
int MPI_Info_get_valuelen(MPI_Info info, const char *key, int *valuelen, int *flag);
int MPI_Info_set(MPI_Info info, const char *key, const char *value);
int MPI_Pack_external(const char datarep[], const void *inbuf, int incount,
                      MPI_Datatype datatype, void *outbuf, MPI_Aint outsize, MPI_Aint *position)
                      ;
int MPI_Pack_external_size(const char datarep[], int incount, MPI_Datatype datatype,
                           MPI_Aint *size);
int MPI_Request_get_status(MPI_Request request, int *flag, MPI_Status *status);
int MPI_Status_c2f(const MPI_Status *c_status, MPI_Fint *f_status);
int MPI_Status_f2c(const MPI_Fint *f_status, MPI_Status *c_status);
int MPI_Type_create_darray(int size, int rank, int ndims, const int array_of_gsizes[],
                           const int array_of_distribs[], const int array_of_dargs[],
                           const int array_of_psizes[], int order, MPI_Datatype oldtype,
                           MPI_Datatype *newtype);
int MPI_Type_create_hindexed(int count, const int array_of_blocklengths[],
                             const MPI_Aint array_of_displacements[], MPI_Datatype oldtype,
                             MPI_Datatype *newtype);
int MPI_Type_create_hvector(int count, int blocklength, MPI_Aint stride, MPI_Datatype oldtype,
                            MPI_Datatype *newtype);
int MPI_Type_create_indexed_block(int count, int blocklength, const int array_of_displacements[],
                                  MPI_Datatype oldtype, MPI_Datatype *newtype);
int MPI_Type_create_hindexed_block(int count, int blocklength,
                                   const MPI_Aint array_of_displacements[],
                                   MPI_Datatype oldtype, MPI_Datatype *newtype);
int MPI_Type_create_resized(MPI_Datatype oldtype, MPI_Aint lb, MPI_Aint extent,
                            MPI_Datatype *newtype);
int MPI_Type_create_struct(int count, const int array_of_blocklengths[],
                           const MPI_Aint array_of_displacements[],
                           const MPI_Datatype array_of_types[], MPI_Datatype *newtype);
int MPI_Type_create_subarray(int ndims, const int array_of_sizes[],
                             const int array_of_subsizes[], const int array_of_starts[],
                             int order, MPI_Datatype oldtype, MPI_Datatype *newtype);
int MPI_Type_get_extent(MPI_Datatype datatype, MPI_Aint *lb, MPI_Aint *extent);
int MPI_Type_get_true_extent(MPI_Datatype datatype, MPI_Aint *true_lb, MPI_Aint *true_extent);
int MPI_Unpack_external(const char datarep[], const void *inbuf, MPI_Aint insize,
                        MPI_Aint *position, void *outbuf, int outcount, MPI_Datatype datatype)
                        ;
int MPI_Win_create_errhandler(MPI_Win_errhandler_function *win_errhandler_fn,
                              MPI_Errhandler *errhandler);
int MPI_Win_get_errhandler(MPI_Win win, MPI_Errhandler *errhandler);
int MPI_Win_set_errhandler(MPI_Win win, MPI_Errhandler errhandler);
int MPI_Type_create_f90_integer(int range, MPI_Datatype *newtype);
int MPI_Type_create_f90_real(int precision, int range, MPI_Datatype *newtype);
int MPI_Type_create_f90_complex(int precision, int range, MPI_Datatype *newtype);
int MPI_Reduce_local(const void *inbuf, void *inoutbuf, int count, MPI_Datatype datatype,
                     MPI_Op op)
                     ;
int MPI_Op_commutative(MPI_Op op, int *commute);
int MPI_Reduce_scatter_block(const void *sendbuf, void *recvbuf, int recvcount,
                             MPI_Datatype datatype, MPI_Op op, MPI_Comm comm)
                            
                             ;
int MPI_Dist_graph_create_adjacent(MPI_Comm comm_old, int indegree, const int sources[],
                                   const int sourceweights[], int outdegree,
                                   const int destinations[], const int destweights[],
                                   MPI_Info info, int reorder, MPI_Comm *comm_dist_graph);
int MPI_Dist_graph_create(MPI_Comm comm_old, int n, const int sources[], const int degrees[],
                          const int destinations[], const int weights[], MPI_Info info,
                          int reorder, MPI_Comm *comm_dist_graph);
int MPI_Dist_graph_neighbors_count(MPI_Comm comm, int *indegree, int *outdegree, int *weighted);
int MPI_Dist_graph_neighbors(MPI_Comm comm, int maxindegree, int sources[], int sourceweights[],
                             int maxoutdegree, int destinations[], int destweights[]);
int MPI_Improbe(int source, int tag, MPI_Comm comm, int *flag, MPI_Message *message,
                MPI_Status *status);
int MPI_Imrecv(void *buf, int count, MPI_Datatype datatype, MPI_Message *message,
               MPI_Request *request) ;
int MPI_Mprobe(int source, int tag, MPI_Comm comm, MPI_Message *message, MPI_Status *status);
int MPI_Mrecv(void *buf, int count, MPI_Datatype datatype, MPI_Message *message,
              MPI_Status *status) ;
int MPI_Comm_idup(MPI_Comm comm, MPI_Comm *newcomm, MPI_Request *request);
int MPI_Ibarrier(MPI_Comm comm, MPI_Request *request);
int MPI_Ibcast(void *buffer, int count, MPI_Datatype datatype, int root, MPI_Comm comm,
               MPI_Request *request) ;
int MPI_Igather(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf,
                int recvcount, MPI_Datatype recvtype, int root, MPI_Comm comm,
                MPI_Request *request)
                ;
int MPI_Igatherv(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf,
                 const int recvcounts[], const int displs[], MPI_Datatype recvtype, int root,
                 MPI_Comm comm, MPI_Request *request)
                 ;
int MPI_Iscatter(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf,
                 int recvcount, MPI_Datatype recvtype, int root, MPI_Comm comm,
                 MPI_Request *request)
                 ;
int MPI_Iscatterv(const void *sendbuf, const int sendcounts[], const int displs[],
                  MPI_Datatype sendtype, void *recvbuf, int recvcount, MPI_Datatype recvtype,
                  int root, MPI_Comm comm, MPI_Request *request)
                  ;
int MPI_Iallgather(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf,
                   int recvcount, MPI_Datatype recvtype, MPI_Comm comm, MPI_Request *request)
                   ;
int MPI_Iallgatherv(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf,
                    const int recvcounts[], const int displs[], MPI_Datatype recvtype,
                    MPI_Comm comm, MPI_Request *request)
                    ;
int MPI_Ialltoall(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf,
                  int recvcount, MPI_Datatype recvtype, MPI_Comm comm, MPI_Request *request)
                  ;
int MPI_Ialltoallv(const void *sendbuf, const int sendcounts[], const int sdispls[],
                   MPI_Datatype sendtype, void *recvbuf, const int recvcounts[],
                   const int rdispls[], MPI_Datatype recvtype, MPI_Comm comm,
                   MPI_Request *request)
                   ;
int MPI_Ialltoallw(const void *sendbuf, const int sendcounts[], const int sdispls[],
                   const MPI_Datatype sendtypes[], void *recvbuf, const int recvcounts[],
                   const int rdispls[], const MPI_Datatype recvtypes[], MPI_Comm comm,
                   MPI_Request *request);
int MPI_Ireduce(const void *sendbuf, void *recvbuf, int count, MPI_Datatype datatype,
                MPI_Op op, int root, MPI_Comm comm, MPI_Request *request)
                ;
int MPI_Iallreduce(const void *sendbuf, void *recvbuf, int count, MPI_Datatype datatype,
                   MPI_Op op, MPI_Comm comm, MPI_Request *request)
                   ;
int MPI_Ireduce_scatter(const void *sendbuf, void *recvbuf, const int recvcounts[],
                        MPI_Datatype datatype, MPI_Op op, MPI_Comm comm, MPI_Request *request)
                        ;
int MPI_Ireduce_scatter_block(const void *sendbuf, void *recvbuf, int recvcount,
                              MPI_Datatype datatype, MPI_Op op, MPI_Comm comm,
                              MPI_Request *request)
                             
                              ;
int MPI_Iscan(const void *sendbuf, void *recvbuf, int count, MPI_Datatype datatype, MPI_Op op,
              MPI_Comm comm, MPI_Request *request)
              ;
int MPI_Iexscan(const void *sendbuf, void *recvbuf, int count, MPI_Datatype datatype,
                MPI_Op op, MPI_Comm comm, MPI_Request *request)
                ;
int MPI_Ineighbor_allgather(const void *sendbuf, int sendcount, MPI_Datatype sendtype,
                            void *recvbuf, int recvcount, MPI_Datatype recvtype,
                            MPI_Comm comm, MPI_Request *request)
                           
                            ;
int MPI_Ineighbor_allgatherv(const void *sendbuf, int sendcount, MPI_Datatype sendtype,
                             void *recvbuf, const int recvcounts[], const int displs[],
                             MPI_Datatype recvtype, MPI_Comm comm, MPI_Request *request)
                            
                             ;
int MPI_Ineighbor_alltoall(const void *sendbuf, int sendcount, MPI_Datatype sendtype,
                           void *recvbuf, int recvcount, MPI_Datatype recvtype, MPI_Comm comm,
                           MPI_Request *request)
                          
                           ;
int MPI_Ineighbor_alltoallv(const void *sendbuf, const int sendcounts[], const int sdispls[],
                            MPI_Datatype sendtype, void *recvbuf, const int recvcounts[],
                            const int rdispls[], MPI_Datatype recvtype, MPI_Comm comm,
                            MPI_Request *request)
                           
                            ;
int MPI_Ineighbor_alltoallw(const void *sendbuf, const int sendcounts[],
                            const MPI_Aint sdispls[], const MPI_Datatype sendtypes[],
                            void *recvbuf, const int recvcounts[], const MPI_Aint rdispls[],
                            const MPI_Datatype recvtypes[], MPI_Comm comm, MPI_Request *request);
int MPI_Neighbor_allgather(const void *sendbuf, int sendcount, MPI_Datatype sendtype,
                           void *recvbuf, int recvcount, MPI_Datatype recvtype, MPI_Comm comm)
                          
                           ;
int MPI_Neighbor_allgatherv(const void *sendbuf, int sendcount, MPI_Datatype sendtype,
                            void *recvbuf, const int recvcounts[], const int displs[],
                            MPI_Datatype recvtype, MPI_Comm comm)
                           
                            ;
int MPI_Neighbor_alltoall(const void *sendbuf, int sendcount, MPI_Datatype sendtype,
                          void *recvbuf, int recvcount, MPI_Datatype recvtype, MPI_Comm comm)
                         
                          ;
int MPI_Neighbor_alltoallv(const void *sendbuf, const int sendcounts[], const int sdispls[],
                           MPI_Datatype sendtype, void *recvbuf, const int recvcounts[],
                           const int rdispls[], MPI_Datatype recvtype, MPI_Comm comm)
                          
                           ;
int MPI_Neighbor_alltoallw(const void *sendbuf, const int sendcounts[], const MPI_Aint sdispls[],
                           const MPI_Datatype sendtypes[], void *recvbuf, const int recvcounts[],
                           const MPI_Aint rdispls[], const MPI_Datatype recvtypes[], MPI_Comm comm);
int MPI_Comm_split_type(MPI_Comm comm, int split_type, int key, MPI_Info info, MPI_Comm *newcomm);
int MPI_Get_elements_x(const MPI_Status *status, MPI_Datatype datatype, MPI_Count *count);
int MPI_Status_set_elements_x(MPI_Status *status, MPI_Datatype datatype, MPI_Count count);
int MPI_Type_get_extent_x(MPI_Datatype datatype, MPI_Count *lb, MPI_Count *extent);
int MPI_Type_get_true_extent_x(MPI_Datatype datatype, MPI_Count *lb, MPI_Count *extent);
int MPI_Type_size_x(MPI_Datatype datatype, MPI_Count *size);
int MPI_Comm_create_group(MPI_Comm comm, MPI_Group group, int tag, MPI_Comm *newcomm);
MPI_Aint MPI_Aint_add(MPI_Aint base, MPI_Aint disp);
MPI_Aint MPI_Aint_diff(MPI_Aint addr1, MPI_Aint addr2);
int MPI_T_init_thread(int required, int *provided);
int MPI_T_finalize(void);
int MPI_T_enum_get_info(MPI_T_enum enumtype, int *num, char *name, int *name_len);
int MPI_T_enum_get_item(MPI_T_enum enumtype, int indx, int *value, char *name, int *name_len);
int MPI_T_cvar_get_num(int *num_cvar);
int MPI_T_cvar_get_info(int cvar_index, char *name, int *name_len, int *verbosity,
                        MPI_Datatype *datatype, MPI_T_enum *enumtype, char *desc, int *desc_len,
                        int *binding, int *scope);
int MPI_T_cvar_handle_alloc(int cvar_index, void *obj_handle, MPI_T_cvar_handle *handle,
                            int *count);
int MPI_T_cvar_handle_free(MPI_T_cvar_handle *handle);
int MPI_T_cvar_read(MPI_T_cvar_handle handle, void *buf);
int MPI_T_cvar_write(MPI_T_cvar_handle handle, const void *buf);
int MPI_T_pvar_get_num(int *num_pvar);
int MPI_T_pvar_get_info(int pvar_index, char *name, int *name_len, int *verbosity, int *var_class,
                        MPI_Datatype *datatype, MPI_T_enum *enumtype, char *desc, int *desc_len,
                        int *binding, int *readonly, int *continuous, int *atomic);
int MPI_T_pvar_session_create(MPI_T_pvar_session *session);
int MPI_T_pvar_session_free(MPI_T_pvar_session *session);
int MPI_T_pvar_handle_alloc(MPI_T_pvar_session session, int pvar_index, void *obj_handle,
                            MPI_T_pvar_handle *handle, int *count);
int MPI_T_pvar_handle_free(MPI_T_pvar_session session, MPI_T_pvar_handle *handle);
int MPI_T_pvar_start(MPI_T_pvar_session session, MPI_T_pvar_handle handle);
int MPI_T_pvar_stop(MPI_T_pvar_session session, MPI_T_pvar_handle handle);
int MPI_T_pvar_read(MPI_T_pvar_session session, MPI_T_pvar_handle handle, void *buf);
int MPI_T_pvar_write(MPI_T_pvar_session session, MPI_T_pvar_handle handle, const void *buf);
int MPI_T_pvar_reset(MPI_T_pvar_session session, MPI_T_pvar_handle handle);
int MPI_T_pvar_readreset(MPI_T_pvar_session session, MPI_T_pvar_handle handle, void *buf);
int MPI_T_category_get_num(int *num_cat);
int MPI_T_category_get_info(int cat_index, char *name, int *name_len, char *desc, int *desc_len,
                            int *num_cvars, int *num_pvars, int *num_categories);
int MPI_T_category_get_cvars(int cat_index, int len, int indices[]);
int MPI_T_category_get_pvars(int cat_index, int len, int indices[]);
int MPI_T_category_get_categories(int cat_index, int len, int indices[]);
int MPI_T_category_changed(int *stamp);
int MPI_T_cvar_get_index(const char *name, int *cvar_index);
int MPI_T_pvar_get_index(const char *name, int var_class, int *pvar_index);
int MPI_T_category_get_index(const char *name, int *cat_index);
int MPIX_Comm_failure_ack(MPI_Comm comm);
int MPIX_Comm_failure_get_acked(MPI_Comm comm, MPI_Group *failedgrp);
int MPIX_Comm_revoke(MPI_Comm comm);
int MPIX_Comm_shrink(MPI_Comm comm, MPI_Comm *newcomm);
int MPIX_Comm_agree(MPI_Comm comm, int *flag);
int PMPI_Send(const void *buf, int count, MPI_Datatype datatype, int dest, int tag,
              MPI_Comm comm) ;
int PMPI_Recv(void *buf, int count, MPI_Datatype datatype, int source, int tag,
              MPI_Comm comm, MPI_Status *status) ;
int PMPI_Get_count(const MPI_Status *status, MPI_Datatype datatype, int *count);
int PMPI_Bsend(const void *buf, int count, MPI_Datatype datatype, int dest, int tag,
               MPI_Comm comm) ;
int PMPI_Ssend(const void *buf, int count, MPI_Datatype datatype, int dest, int tag,
               MPI_Comm comm) ;
int PMPI_Rsend(const void *buf, int count, MPI_Datatype datatype, int dest, int tag,
               MPI_Comm comm) ;
int PMPI_Buffer_attach(void *buffer, int size);
int PMPI_Buffer_detach(void *buffer_addr, int *size);
int PMPI_Isend(const void *buf, int count, MPI_Datatype datatype, int dest, int tag,
               MPI_Comm comm, MPI_Request *request) ;
int PMPI_Ibsend(const void *buf, int count, MPI_Datatype datatype, int dest, int tag,
                MPI_Comm comm, MPI_Request *request) ;
int PMPI_Issend(const void *buf, int count, MPI_Datatype datatype, int dest, int tag,
                MPI_Comm comm, MPI_Request *request) ;
int PMPI_Irsend(const void *buf, int count, MPI_Datatype datatype, int dest, int tag,
                MPI_Comm comm, MPI_Request *request) ;
int PMPI_Irecv(void *buf, int count, MPI_Datatype datatype, int source, int tag,
               MPI_Comm comm, MPI_Request *request) ;
int PMPI_Wait(MPI_Request *request, MPI_Status *status);
int PMPI_Test(MPI_Request *request, int *flag, MPI_Status *status);
int PMPI_Request_free(MPI_Request *request);
int PMPI_Waitany(int count, MPI_Request array_of_requests[], int *indx, MPI_Status *status);
int PMPI_Testany(int count, MPI_Request array_of_requests[], int *indx, int *flag,
                 MPI_Status *status);
int PMPI_Waitall(int count, MPI_Request array_of_requests[], MPI_Status array_of_statuses[]);
int PMPI_Testall(int count, MPI_Request array_of_requests[], int *flag,
                 MPI_Status array_of_statuses[]);
int PMPI_Waitsome(int incount, MPI_Request array_of_requests[], int *outcount,
                  int array_of_indices[], MPI_Status array_of_statuses[]);
int PMPI_Testsome(int incount, MPI_Request array_of_requests[], int *outcount,
                  int array_of_indices[], MPI_Status array_of_statuses[]);
int PMPI_Iprobe(int source, int tag, MPI_Comm comm, int *flag, MPI_Status *status);
int PMPI_Probe(int source, int tag, MPI_Comm comm, MPI_Status *status);
int PMPI_Cancel(MPI_Request *request);
int PMPI_Test_cancelled(const MPI_Status *status, int *flag);
int PMPI_Send_init(const void *buf, int count, MPI_Datatype datatype, int dest, int tag,
                   MPI_Comm comm, MPI_Request *request) ;
int PMPI_Bsend_init(const void *buf, int count, MPI_Datatype datatype, int dest, int tag,
                    MPI_Comm comm, MPI_Request *request) ;
int PMPI_Ssend_init(const void *buf, int count, MPI_Datatype datatype, int dest, int tag,
                    MPI_Comm comm, MPI_Request *request) ;
int PMPI_Rsend_init(const void *buf, int count, MPI_Datatype datatype, int dest, int tag,
                    MPI_Comm comm, MPI_Request *request) ;
int PMPI_Recv_init(void *buf, int count, MPI_Datatype datatype, int source, int tag,
                   MPI_Comm comm, MPI_Request *request) ;
int PMPI_Start(MPI_Request *request);
int PMPI_Startall(int count, MPI_Request array_of_requests[]);
int PMPI_Sendrecv(const void *sendbuf, int sendcount, MPI_Datatype sendtype, int dest,
                  int sendtag, void *recvbuf, int recvcount, MPI_Datatype recvtype,
                  int source, int recvtag, MPI_Comm comm, MPI_Status *status)
                 
                  ;
int PMPI_Sendrecv_replace(void *buf, int count, MPI_Datatype datatype, int dest,
                          int sendtag, int source, int recvtag, MPI_Comm comm,
                          MPI_Status *status) ;
int PMPI_Type_contiguous(int count, MPI_Datatype oldtype, MPI_Datatype *newtype);
int PMPI_Type_vector(int count, int blocklength, int stride, MPI_Datatype oldtype,
                     MPI_Datatype *newtype);
int PMPI_Type_hvector(int count, int blocklength, MPI_Aint stride, MPI_Datatype oldtype,
                      MPI_Datatype *newtype);
int PMPI_Type_indexed(int count, const int *array_of_blocklengths,
                      const int *array_of_displacements, MPI_Datatype oldtype,
                      MPI_Datatype *newtype);
int PMPI_Type_hindexed(int count, const int *array_of_blocklengths,
                       const MPI_Aint *array_of_displacements, MPI_Datatype oldtype,
                       MPI_Datatype *newtype);
int PMPI_Type_struct(int count, const int *array_of_blocklengths,
                     const MPI_Aint *array_of_displacements,
                     const MPI_Datatype *array_of_types, MPI_Datatype *newtype);
int PMPI_Address(const void *location, MPI_Aint *address);
int PMPI_Type_extent(MPI_Datatype datatype, MPI_Aint *extent);
int PMPI_Type_size(MPI_Datatype datatype, int *size);
int PMPI_Type_lb(MPI_Datatype datatype, MPI_Aint *displacement);
int PMPI_Type_ub(MPI_Datatype datatype, MPI_Aint *displacement);
int PMPI_Type_commit(MPI_Datatype *datatype);
int PMPI_Type_free(MPI_Datatype *datatype);
int PMPI_Get_elements(const MPI_Status *status, MPI_Datatype datatype, int *count);
int PMPI_Pack(const void *inbuf, int incount, MPI_Datatype datatype, void *outbuf,
              int outsize, int *position, MPI_Comm comm) ;
int PMPI_Unpack(const void *inbuf, int insize, int *position, void *outbuf, int outcount,
                MPI_Datatype datatype, MPI_Comm comm) ;
int PMPI_Pack_size(int incount, MPI_Datatype datatype, MPI_Comm comm, int *size);
int PMPI_Barrier(MPI_Comm comm);
int PMPI_Bcast(void *buffer, int count, MPI_Datatype datatype, int root, MPI_Comm comm)
               ;
int PMPI_Gather(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf,
                int recvcount, MPI_Datatype recvtype, int root, MPI_Comm comm)
                ;
int PMPI_Gatherv(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf,
                 const int *recvcounts, const int *displs, MPI_Datatype recvtype, int root,
                 MPI_Comm comm)
                 ;
int PMPI_Scatter(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf,
                 int recvcount, MPI_Datatype recvtype, int root, MPI_Comm comm)
                 ;
int PMPI_Scatterv(const void *sendbuf, const int *sendcounts, const int *displs,
                  MPI_Datatype sendtype, void *recvbuf, int recvcount, MPI_Datatype recvtype,
                  int root, MPI_Comm comm)
                  ;
int PMPI_Allgather(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf,
                   int recvcount, MPI_Datatype recvtype, MPI_Comm comm)
                   ;
int PMPI_Allgatherv(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf,
                    const int *recvcounts, const int *displs, MPI_Datatype recvtype, MPI_Comm comm)
                    ;
int PMPI_Alltoall(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf,
                  int recvcount, MPI_Datatype recvtype, MPI_Comm comm)
                  ;
int PMPI_Alltoallv(const void *sendbuf, const int *sendcounts, const int *sdispls,
                   MPI_Datatype sendtype, void *recvbuf, const int *recvcounts,
                   const int *rdispls, MPI_Datatype recvtype, MPI_Comm comm)
                   ;
int PMPI_Alltoallw(const void *sendbuf, const int sendcounts[], const int sdispls[],
                   const MPI_Datatype sendtypes[], void *recvbuf, const int recvcounts[],
                   const int rdispls[], const MPI_Datatype recvtypes[], MPI_Comm comm);
int PMPI_Exscan(const void *sendbuf, void *recvbuf, int count, MPI_Datatype datatype,
                MPI_Op op, MPI_Comm comm)
                ;
int PMPI_Reduce(const void *sendbuf, void *recvbuf, int count, MPI_Datatype datatype,
                MPI_Op op, int root, MPI_Comm comm)
                ;
int PMPI_Op_create(MPI_User_function *user_fn, int commute, MPI_Op *op);
int PMPI_Op_free(MPI_Op *op);
int PMPI_Allreduce(const void *sendbuf, void *recvbuf, int count, MPI_Datatype datatype,
                   MPI_Op op, MPI_Comm comm)
                   ;
int PMPI_Reduce_scatter(const void *sendbuf, void *recvbuf, const int recvcounts[],
                        MPI_Datatype datatype, MPI_Op op, MPI_Comm comm)
                        ;
int PMPI_Scan(const void *sendbuf, void *recvbuf, int count, MPI_Datatype datatype, MPI_Op op,
              MPI_Comm comm)
              ;
int PMPI_Group_size(MPI_Group group, int *size);
int PMPI_Group_rank(MPI_Group group, int *rank);
int PMPI_Group_translate_ranks(MPI_Group group1, int n, const int ranks1[], MPI_Group group2,
                               int ranks2[]);
int PMPI_Group_compare(MPI_Group group1, MPI_Group group2, int *result);
int PMPI_Comm_group(MPI_Comm comm, MPI_Group *group);
int PMPI_Group_union(MPI_Group group1, MPI_Group group2, MPI_Group *newgroup);
int PMPI_Group_intersection(MPI_Group group1, MPI_Group group2, MPI_Group *newgroup);
int PMPI_Group_difference(MPI_Group group1, MPI_Group group2, MPI_Group *newgroup);
int PMPI_Group_incl(MPI_Group group, int n, const int ranks[], MPI_Group *newgroup);
int PMPI_Group_excl(MPI_Group group, int n, const int ranks[], MPI_Group *newgroup);
int PMPI_Group_range_incl(MPI_Group group, int n, int ranges[][3], MPI_Group *newgroup);
int PMPI_Group_range_excl(MPI_Group group, int n, int ranges[][3], MPI_Group *newgroup);
int PMPI_Group_free(MPI_Group *group);
int PMPI_Comm_size(MPI_Comm comm, int *size);
int PMPI_Comm_rank(MPI_Comm comm, int *rank);
int PMPI_Comm_compare(MPI_Comm comm1, MPI_Comm comm2, int *result);
int PMPI_Comm_dup(MPI_Comm comm, MPI_Comm *newcomm);
int PMPI_Comm_dup_with_info(MPI_Comm comm, MPI_Info info, MPI_Comm *newcomm);
int PMPI_Comm_create(MPI_Comm comm, MPI_Group group, MPI_Comm *newcomm);
int PMPI_Comm_split(MPI_Comm comm, int color, int key, MPI_Comm *newcomm);
int PMPI_Comm_free(MPI_Comm *comm);
int PMPI_Comm_test_inter(MPI_Comm comm, int *flag);
int PMPI_Comm_remote_size(MPI_Comm comm, int *size);
int PMPI_Comm_remote_group(MPI_Comm comm, MPI_Group *group);
int PMPI_Intercomm_create(MPI_Comm local_comm, int local_leader, MPI_Comm peer_comm,
                          int remote_leader, int tag, MPI_Comm *newintercomm);
int PMPI_Intercomm_merge(MPI_Comm intercomm, int high, MPI_Comm *newintracomm);
int PMPI_Keyval_create(MPI_Copy_function *copy_fn, MPI_Delete_function *delete_fn,
                       int *keyval, void *extra_state);
int PMPI_Keyval_free(int *keyval);
int PMPI_Attr_put(MPI_Comm comm, int keyval, void *attribute_val);
int PMPI_Attr_get(MPI_Comm comm, int keyval, void *attribute_val, int *flag);
int PMPI_Attr_delete(MPI_Comm comm, int keyval);
int PMPI_Topo_test(MPI_Comm comm, int *status);
int PMPI_Cart_create(MPI_Comm comm_old, int ndims, const int dims[], const int periods[],
                     int reorder, MPI_Comm *comm_cart);
int PMPI_Dims_create(int nnodes, int ndims, int dims[]);
int PMPI_Graph_create(MPI_Comm comm_old, int nnodes, const int indx[], const int edges[],
                      int reorder, MPI_Comm *comm_graph);
int PMPI_Graphdims_get(MPI_Comm comm, int *nnodes, int *nedges);
int PMPI_Graph_get(MPI_Comm comm, int maxindex, int maxedges, int indx[], int edges[]);
int PMPI_Cartdim_get(MPI_Comm comm, int *ndims);
int PMPI_Cart_get(MPI_Comm comm, int maxdims, int dims[], int periods[], int coords[]);
int PMPI_Cart_rank(MPI_Comm comm, const int coords[], int *rank);
int PMPI_Cart_coords(MPI_Comm comm, int rank, int maxdims, int coords[]);
int PMPI_Graph_neighbors_count(MPI_Comm comm, int rank, int *nneighbors);
int PMPI_Graph_neighbors(MPI_Comm comm, int rank, int maxneighbors, int neighbors[]);
int PMPI_Cart_shift(MPI_Comm comm, int direction, int disp, int *rank_source, int *rank_dest);
int PMPI_Cart_sub(MPI_Comm comm, const int remain_dims[], MPI_Comm *newcomm);
int PMPI_Cart_map(MPI_Comm comm, int ndims, const int dims[], const int periods[], int *newrank);
int PMPI_Graph_map(MPI_Comm comm, int nnodes, const int indx[], const int edges[], int *newrank);
int PMPI_Get_processor_name(char *name, int *resultlen);
int PMPI_Get_version(int *version, int *subversion);
int PMPI_Get_library_version(char *version, int *resultlen);
int PMPI_Errhandler_create(MPI_Handler_function *function, MPI_Errhandler *errhandler);
int PMPI_Errhandler_set(MPI_Comm comm, MPI_Errhandler errhandler);
int PMPI_Errhandler_get(MPI_Comm comm, MPI_Errhandler *errhandler);
int PMPI_Errhandler_free(MPI_Errhandler *errhandler);
int PMPI_Error_string(int errorcode, char *string, int *resultlen);
int PMPI_Error_class(int errorcode, int *errorclass);
double PMPI_Wtime(void);
double PMPI_Wtick(void);
int PMPI_Init(int *argc, char ***argv);
int PMPI_Finalize(void);
int PMPI_Initialized(int *flag);
int PMPI_Abort(MPI_Comm comm, int errorcode);
int PMPI_Pcontrol(const int level, ...);
int PMPI_Close_port(const char *port_name);
int PMPI_Comm_accept(const char *port_name, MPI_Info info, int root, MPI_Comm comm,
                     MPI_Comm *newcomm);
int PMPI_Comm_connect(const char *port_name, MPI_Info info, int root, MPI_Comm comm,
                      MPI_Comm *newcomm);
int PMPI_Comm_disconnect(MPI_Comm *comm);
int PMPI_Comm_get_parent(MPI_Comm *parent);
int PMPI_Comm_join(int fd, MPI_Comm *intercomm);
int PMPI_Comm_spawn(const char *command, char *argv[], int maxprocs, MPI_Info info, int root,
                    MPI_Comm comm, MPI_Comm *intercomm, int array_of_errcodes[]);
int PMPI_Comm_spawn_multiple(int count, char *array_of_commands[], char **array_of_argv[],
                             const int array_of_maxprocs[], const MPI_Info array_of_info[],
                             int root, MPI_Comm comm, MPI_Comm *intercomm, int array_of_errcodes[]);
int PMPI_Lookup_name(const char *service_name, MPI_Info info, char *port_name);
int PMPI_Open_port(MPI_Info info, char *port_name);
int PMPI_Publish_name(const char *service_name, MPI_Info info, const char *port_name);
int PMPI_Unpublish_name(const char *service_name, MPI_Info info, const char *port_name);
int PMPI_Comm_set_info(MPI_Comm comm, MPI_Info info);
int PMPI_Comm_get_info(MPI_Comm comm, MPI_Info *info);
int PMPI_Accumulate(const void *origin_addr, int origin_count, MPI_Datatype origin_datatype,
                    int target_rank, MPI_Aint target_disp, int target_count,
                    MPI_Datatype target_datatype, MPI_Op op, MPI_Win win)
                    ;
int PMPI_Get(void *origin_addr, int origin_count, MPI_Datatype origin_datatype,
             int target_rank, MPI_Aint target_disp, int target_count,
             MPI_Datatype target_datatype, MPI_Win win) ;
int PMPI_Put(const void *origin_addr, int origin_count, MPI_Datatype origin_datatype,
             int target_rank, MPI_Aint target_disp, int target_count,
             MPI_Datatype target_datatype, MPI_Win win) ;
int PMPI_Win_complete(MPI_Win win);
int PMPI_Win_create(void *base, MPI_Aint size, int disp_unit, MPI_Info info, MPI_Comm comm,
                    MPI_Win *win);
int PMPI_Win_fence(int assert, MPI_Win win);
int PMPI_Win_free(MPI_Win *win);
int PMPI_Win_get_group(MPI_Win win, MPI_Group *group);
int PMPI_Win_lock(int lock_type, int rank, int assert, MPI_Win win);
int PMPI_Win_post(MPI_Group group, int assert, MPI_Win win);
int PMPI_Win_start(MPI_Group group, int assert, MPI_Win win);
int PMPI_Win_test(MPI_Win win, int *flag);
int PMPI_Win_unlock(int rank, MPI_Win win);
int PMPI_Win_wait(MPI_Win win);
int PMPI_Win_allocate(MPI_Aint size, int disp_unit, MPI_Info info, MPI_Comm comm, void *baseptr,
                      MPI_Win *win);
int PMPI_Win_allocate_shared(MPI_Aint size, int disp_unit, MPI_Info info, MPI_Comm comm,
                             void *baseptr, MPI_Win *win);
int PMPI_Win_shared_query(MPI_Win win, int rank, MPI_Aint *size, int *disp_unit, void *baseptr);
int PMPI_Win_create_dynamic(MPI_Info info, MPI_Comm comm, MPI_Win *win);
int PMPI_Win_attach(MPI_Win win, void *base, MPI_Aint size);
int PMPI_Win_detach(MPI_Win win, const void *base);
int PMPI_Win_get_info(MPI_Win win, MPI_Info *info_used);
int PMPI_Win_set_info(MPI_Win win, MPI_Info info);
int PMPI_Get_accumulate(const void *origin_addr, int origin_count,
                         MPI_Datatype origin_datatype, void *result_addr, int result_count,
                         MPI_Datatype result_datatype, int target_rank, MPI_Aint target_disp,
                         int target_count, MPI_Datatype target_datatype, MPI_Op op, MPI_Win win)
                        
                         ;
int PMPI_Fetch_and_op(const void *origin_addr, void *result_addr,
                       MPI_Datatype datatype, int target_rank, MPI_Aint target_disp,
                       MPI_Op op, MPI_Win win)
                       ;
int PMPI_Compare_and_swap(const void *origin_addr, const void *compare_addr,
                           void *result_addr, MPI_Datatype datatype, int target_rank,
                           MPI_Aint target_disp, MPI_Win win)
                          
                          
                           ;
int PMPI_Rput(const void *origin_addr, int origin_count,
               MPI_Datatype origin_datatype, int target_rank, MPI_Aint target_disp,
               int target_count, MPI_Datatype target_datatype, MPI_Win win,
               MPI_Request *request)
               ;
int PMPI_Rget(void *origin_addr, int origin_count,
               MPI_Datatype origin_datatype, int target_rank, MPI_Aint target_disp,
               int target_count, MPI_Datatype target_datatype, MPI_Win win,
               MPI_Request *request)
               ;
int PMPI_Raccumulate(const void *origin_addr, int origin_count,
                      MPI_Datatype origin_datatype, int target_rank, MPI_Aint target_disp,
                      int target_count, MPI_Datatype target_datatype, MPI_Op op, MPI_Win win,
                      MPI_Request *request)
                      ;
int PMPI_Rget_accumulate(const void *origin_addr, int origin_count,
                          MPI_Datatype origin_datatype, void *result_addr, int result_count,
                          MPI_Datatype result_datatype, int target_rank, MPI_Aint target_disp,
                          int target_count, MPI_Datatype target_datatype, MPI_Op op, MPI_Win win,
                          MPI_Request *request)
                         
                          ;
int PMPI_Win_lock_all(int assert, MPI_Win win);
int PMPI_Win_unlock_all(MPI_Win win);
int PMPI_Win_flush(int rank, MPI_Win win);
int PMPI_Win_flush_all(MPI_Win win);
int PMPI_Win_flush_local(int rank, MPI_Win win);
int PMPI_Win_flush_local_all(MPI_Win win);
int PMPI_Win_sync(MPI_Win win);
int PMPI_Add_error_class(int *errorclass);
int PMPI_Add_error_code(int errorclass, int *errorcode);
int PMPI_Add_error_string(int errorcode, const char *string);
int PMPI_Comm_call_errhandler(MPI_Comm comm, int errorcode);
int PMPI_Comm_create_keyval(MPI_Comm_copy_attr_function *comm_copy_attr_fn,
                            MPI_Comm_delete_attr_function *comm_delete_attr_fn, int *comm_keyval,
                            void *extra_state);
int PMPI_Comm_delete_attr(MPI_Comm comm, int comm_keyval);
int PMPI_Comm_free_keyval(int *comm_keyval);
int PMPI_Comm_get_attr(MPI_Comm comm, int comm_keyval, void *attribute_val, int *flag);
int PMPI_Comm_get_name(MPI_Comm comm, char *comm_name, int *resultlen);
int PMPI_Comm_set_attr(MPI_Comm comm, int comm_keyval, void *attribute_val);
int PMPI_Comm_set_name(MPI_Comm comm, const char *comm_name);
int PMPI_File_call_errhandler(MPI_File fh, int errorcode);
int PMPI_Grequest_complete(MPI_Request request);
int PMPI_Grequest_start(MPI_Grequest_query_function *query_fn, MPI_Grequest_free_function *free_fn,
                        MPI_Grequest_cancel_function *cancel_fn, void *extra_state,
                        MPI_Request *request);
int PMPI_Init_thread(int *argc, char ***argv, int required, int *provided);
int PMPI_Is_thread_main(int *flag);
int PMPI_Query_thread(int *provided);
int PMPI_Status_set_cancelled(MPI_Status *status, int flag);
int PMPI_Status_set_elements(MPI_Status *status, MPI_Datatype datatype, int count);
int PMPI_Type_create_keyval(MPI_Type_copy_attr_function *type_copy_attr_fn,
                            MPI_Type_delete_attr_function *type_delete_attr_fn,
                            int *type_keyval, void *extra_state);
int PMPI_Type_delete_attr(MPI_Datatype datatype, int type_keyval);
int PMPI_Type_dup(MPI_Datatype oldtype, MPI_Datatype *newtype);
int PMPI_Type_free_keyval(int *type_keyval);
int PMPI_Type_get_attr(MPI_Datatype datatype, int type_keyval, void *attribute_val, int *flag);
int PMPI_Type_get_contents(MPI_Datatype datatype, int max_integers, int max_addresses,
                           int max_datatypes, int array_of_integers[],
                           MPI_Aint array_of_addresses[], MPI_Datatype array_of_datatypes[]);
int PMPI_Type_get_envelope(MPI_Datatype datatype, int *num_integers, int *num_addresses,
                           int *num_datatypes, int *combiner);
int PMPI_Type_get_name(MPI_Datatype datatype, char *type_name, int *resultlen);
int PMPI_Type_set_attr(MPI_Datatype datatype, int type_keyval, void *attribute_val);
int PMPI_Type_set_name(MPI_Datatype datatype, const char *type_name);
int PMPI_Type_match_size(int typeclass, int size, MPI_Datatype *datatype);
int PMPI_Win_call_errhandler(MPI_Win win, int errorcode);
int PMPI_Win_create_keyval(MPI_Win_copy_attr_function *win_copy_attr_fn,
                           MPI_Win_delete_attr_function *win_delete_attr_fn, int *win_keyval,
                           void *extra_state);
int PMPI_Win_delete_attr(MPI_Win win, int win_keyval);
int PMPI_Win_free_keyval(int *win_keyval);
int PMPI_Win_get_attr(MPI_Win win, int win_keyval, void *attribute_val, int *flag);
int PMPI_Win_get_name(MPI_Win win, char *win_name, int *resultlen);
int PMPI_Win_set_attr(MPI_Win win, int win_keyval, void *attribute_val);
int PMPI_Win_set_name(MPI_Win win, const char *win_name);
int PMPI_Alloc_mem(MPI_Aint size, MPI_Info info, void *baseptr);
int PMPI_Comm_create_errhandler(MPI_Comm_errhandler_function *comm_errhandler_fn,
                                MPI_Errhandler *errhandler);
int PMPI_Comm_get_errhandler(MPI_Comm comm, MPI_Errhandler *errhandler);
int PMPI_Comm_set_errhandler(MPI_Comm comm, MPI_Errhandler errhandler);
int PMPI_File_create_errhandler(MPI_File_errhandler_function *file_errhandler_fn,
                                MPI_Errhandler *errhandler);
int PMPI_File_get_errhandler(MPI_File file, MPI_Errhandler *errhandler);
int PMPI_File_set_errhandler(MPI_File file, MPI_Errhandler errhandler);
int PMPI_Finalized(int *flag);
int PMPI_Free_mem(void *base);
int PMPI_Get_address(const void *location, MPI_Aint *address);
int PMPI_Info_create(MPI_Info *info);
int PMPI_Info_delete(MPI_Info info, const char *key);
int PMPI_Info_dup(MPI_Info info, MPI_Info *newinfo);
int PMPI_Info_free(MPI_Info *info);
int PMPI_Info_get(MPI_Info info, const char *key, int valuelen, char *value, int *flag);
int PMPI_Info_get_nkeys(MPI_Info info, int *nkeys);
int PMPI_Info_get_nthkey(MPI_Info info, int n, char *key);
int PMPI_Info_get_valuelen(MPI_Info info, const char *key, int *valuelen, int *flag);
int PMPI_Info_set(MPI_Info info, const char *key, const char *value);
int PMPI_Pack_external(const char datarep[], const void *inbuf, int incount,
                       MPI_Datatype datatype, void *outbuf, MPI_Aint outsize, MPI_Aint *position)
                       ;
int PMPI_Pack_external_size(const char datarep[], int incount, MPI_Datatype datatype,
                            MPI_Aint *size);
int PMPI_Request_get_status(MPI_Request request, int *flag, MPI_Status *status);
int PMPI_Status_c2f(const MPI_Status *c_status, MPI_Fint *f_status);
int PMPI_Status_f2c(const MPI_Fint *f_status, MPI_Status *c_status);
int PMPI_Type_create_darray(int size, int rank, int ndims, const int array_of_gsizes[],
                            const int array_of_distribs[], const int array_of_dargs[],
                            const int array_of_psizes[], int order, MPI_Datatype oldtype,
                            MPI_Datatype *newtype);
int PMPI_Type_create_hindexed(int count, const int array_of_blocklengths[],
                              const MPI_Aint array_of_displacements[], MPI_Datatype oldtype,
                              MPI_Datatype *newtype);
int PMPI_Type_create_hvector(int count, int blocklength, MPI_Aint stride, MPI_Datatype oldtype,
                             MPI_Datatype *newtype);
int PMPI_Type_create_indexed_block(int count, int blocklength, const int array_of_displacements[],
                                   MPI_Datatype oldtype, MPI_Datatype *newtype);
int PMPI_Type_create_hindexed_block(int count, int blocklength,
                                    const MPI_Aint array_of_displacements[],
                                    MPI_Datatype oldtype, MPI_Datatype *newtype);
int PMPI_Type_create_resized(MPI_Datatype oldtype, MPI_Aint lb, MPI_Aint extent,
                             MPI_Datatype *newtype);
int PMPI_Type_create_struct(int count, const int array_of_blocklengths[],
                            const MPI_Aint array_of_displacements[],
                            const MPI_Datatype array_of_types[], MPI_Datatype *newtype);
int PMPI_Type_create_subarray(int ndims, const int array_of_sizes[],
                              const int array_of_subsizes[], const int array_of_starts[],
                              int order, MPI_Datatype oldtype, MPI_Datatype *newtype);
int PMPI_Type_get_extent(MPI_Datatype datatype, MPI_Aint *lb, MPI_Aint *extent);
int PMPI_Type_get_true_extent(MPI_Datatype datatype, MPI_Aint *true_lb, MPI_Aint *true_extent);
int PMPI_Unpack_external(const char datarep[], const void *inbuf, MPI_Aint insize,
                         MPI_Aint *position, void *outbuf, int outcount, MPI_Datatype datatype)
                         ;
int PMPI_Win_create_errhandler(MPI_Win_errhandler_function *win_errhandler_fn,
                               MPI_Errhandler *errhandler);
int PMPI_Win_get_errhandler(MPI_Win win, MPI_Errhandler *errhandler);
int PMPI_Win_set_errhandler(MPI_Win win, MPI_Errhandler errhandler);
int PMPI_Type_create_f90_integer(int r, MPI_Datatype *newtype);
int PMPI_Type_create_f90_real(int p, int r, MPI_Datatype *newtype);
int PMPI_Type_create_f90_complex(int p, int r, MPI_Datatype *newtype);
int PMPI_Reduce_local(const void *inbuf, void *inoutbuf, int count, MPI_Datatype datatype,
                      MPI_Op op)
                      ;
int PMPI_Op_commutative(MPI_Op op, int *commute);
int PMPI_Reduce_scatter_block(const void *sendbuf, void *recvbuf, int recvcount,
                              MPI_Datatype datatype, MPI_Op op, MPI_Comm comm)
                             
                              ;
int PMPI_Dist_graph_create_adjacent(MPI_Comm comm_old, int indegree, const int sources[],
                                    const int sourceweights[], int outdegree,
                                    const int destinations[], const int destweights[],
                                    MPI_Info info, int reorder, MPI_Comm *comm_dist_graph);
int PMPI_Dist_graph_create(MPI_Comm comm_old, int n, const int sources[], const int degrees[],
                           const int destinations[], const int weights[], MPI_Info info,
                           int reorder, MPI_Comm *comm_dist_graph);
int PMPI_Dist_graph_neighbors_count(MPI_Comm comm, int *indegree, int *outdegree, int *weighted);
int PMPI_Dist_graph_neighbors(MPI_Comm comm, int maxindegree, int sources[], int sourceweights[],
                              int maxoutdegree, int destinations[], int destweights[]);
int PMPI_Improbe(int source, int tag, MPI_Comm comm, int *flag, MPI_Message *message,
                 MPI_Status *status);
int PMPI_Imrecv(void *buf, int count, MPI_Datatype datatype, MPI_Message *message,
                MPI_Request *request) ;
int PMPI_Mprobe(int source, int tag, MPI_Comm comm, MPI_Message *message, MPI_Status *status);
int PMPI_Mrecv(void *buf, int count, MPI_Datatype datatype, MPI_Message *message,
               MPI_Status *status) ;
int PMPI_Comm_idup(MPI_Comm comm, MPI_Comm *newcomm, MPI_Request *request);
int PMPI_Ibarrier(MPI_Comm comm, MPI_Request *request);
int PMPI_Ibcast(void *buffer, int count, MPI_Datatype datatype, int root, MPI_Comm comm,
                MPI_Request *request) ;
int PMPI_Igather(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf,
                 int recvcount, MPI_Datatype recvtype, int root, MPI_Comm comm,
                 MPI_Request *request)
                 ;
int PMPI_Igatherv(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf,
                  const int recvcounts[], const int displs[], MPI_Datatype recvtype, int root,
                  MPI_Comm comm, MPI_Request *request)
                  ;
int PMPI_Iscatter(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf,
                  int recvcount, MPI_Datatype recvtype, int root, MPI_Comm comm,
                  MPI_Request *request)
                  ;
int PMPI_Iscatterv(const void *sendbuf, const int sendcounts[], const int displs[],
                   MPI_Datatype sendtype, void *recvbuf, int recvcount, MPI_Datatype recvtype,
                   int root, MPI_Comm comm, MPI_Request *request)
                   ;
int PMPI_Iallgather(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf,
                    int recvcount, MPI_Datatype recvtype, MPI_Comm comm, MPI_Request *request)
                    ;
int PMPI_Iallgatherv(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf,
                     const int recvcounts[], const int displs[], MPI_Datatype recvtype,
                     MPI_Comm comm, MPI_Request *request)
                     ;
int PMPI_Ialltoall(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf,
                   int recvcount, MPI_Datatype recvtype, MPI_Comm comm, MPI_Request *request)
                   ;
int PMPI_Ialltoallv(const void *sendbuf, const int sendcounts[], const int sdispls[],
                    MPI_Datatype sendtype, void *recvbuf, const int recvcounts[],
                    const int rdispls[], MPI_Datatype recvtype, MPI_Comm comm,
                    MPI_Request *request)
                    ;
int PMPI_Ialltoallw(const void *sendbuf, const int sendcounts[], const int sdispls[],
                    const MPI_Datatype sendtypes[], void *recvbuf, const int recvcounts[],
                    const int rdispls[], const MPI_Datatype recvtypes[], MPI_Comm comm,
                    MPI_Request *request);
int PMPI_Ireduce(const void *sendbuf, void *recvbuf, int count, MPI_Datatype datatype,
                 MPI_Op op, int root, MPI_Comm comm, MPI_Request *request)
                 ;
int PMPI_Iallreduce(const void *sendbuf, void *recvbuf, int count, MPI_Datatype datatype,
                    MPI_Op op, MPI_Comm comm, MPI_Request *request)
                    ;
int PMPI_Ireduce_scatter(const void *sendbuf, void *recvbuf, const int recvcounts[],
                         MPI_Datatype datatype, MPI_Op op, MPI_Comm comm, MPI_Request *request)
                        
                         ;
int PMPI_Ireduce_scatter_block(const void *sendbuf, void *recvbuf, int recvcount,
                               MPI_Datatype datatype, MPI_Op op, MPI_Comm comm,
                               MPI_Request *request)
                              
                               ;
int PMPI_Iscan(const void *sendbuf, void *recvbuf, int count, MPI_Datatype datatype, MPI_Op op,
               MPI_Comm comm, MPI_Request *request)
               ;
int PMPI_Iexscan(const void *sendbuf, void *recvbuf, int count, MPI_Datatype datatype,
                 MPI_Op op, MPI_Comm comm, MPI_Request *request)
                 ;
int PMPI_Ineighbor_allgather(const void *sendbuf, int sendcount, MPI_Datatype sendtype,
                             void *recvbuf, int recvcount, MPI_Datatype recvtype,
                             MPI_Comm comm, MPI_Request *request)
                            
                             ;
int PMPI_Ineighbor_allgatherv(const void *sendbuf, int sendcount, MPI_Datatype sendtype,
                              void *recvbuf, const int recvcounts[], const int displs[],
                              MPI_Datatype recvtype, MPI_Comm comm, MPI_Request *request)
                             
                              ;
int PMPI_Ineighbor_alltoall(const void *sendbuf, int sendcount, MPI_Datatype sendtype,
                            void *recvbuf, int recvcount, MPI_Datatype recvtype, MPI_Comm comm,
                            MPI_Request *request)
                           
                            ;
int PMPI_Ineighbor_alltoallv(const void *sendbuf, const int sendcounts[], const int sdispls[],
                             MPI_Datatype sendtype, void *recvbuf, const int recvcounts[],
                             const int rdispls[], MPI_Datatype recvtype, MPI_Comm comm,
                             MPI_Request *request)
                            
                             ;
int PMPI_Ineighbor_alltoallw(const void *sendbuf, const int sendcounts[],
                             const MPI_Aint sdispls[], const MPI_Datatype sendtypes[],
                             void *recvbuf, const int recvcounts[], const MPI_Aint rdispls[],
                             const MPI_Datatype recvtypes[], MPI_Comm comm, MPI_Request *request);
int PMPI_Neighbor_allgather(const void *sendbuf, int sendcount, MPI_Datatype sendtype,
                            void *recvbuf, int recvcount, MPI_Datatype recvtype, MPI_Comm comm)
                           
                            ;
int PMPI_Neighbor_allgatherv(const void *sendbuf, int sendcount, MPI_Datatype sendtype,
                             void *recvbuf, const int recvcounts[], const int displs[],
                             MPI_Datatype recvtype, MPI_Comm comm)
                            
                             ;
int PMPI_Neighbor_alltoall(const void *sendbuf, int sendcount, MPI_Datatype sendtype,
                           void *recvbuf, int recvcount, MPI_Datatype recvtype, MPI_Comm comm)
                          
                           ;
int PMPI_Neighbor_alltoallv(const void *sendbuf, const int sendcounts[], const int sdispls[],
                            MPI_Datatype sendtype, void *recvbuf, const int recvcounts[],
                            const int rdispls[], MPI_Datatype recvtype, MPI_Comm comm)
                           
                            ;
int PMPI_Neighbor_alltoallw(const void *sendbuf, const int sendcounts[], const MPI_Aint sdispls[],
                            const MPI_Datatype sendtypes[], void *recvbuf, const int recvcounts[],
                            const MPI_Aint rdispls[], const MPI_Datatype recvtypes[],
                            MPI_Comm comm);
int PMPI_Comm_split_type(MPI_Comm comm, int split_type, int key, MPI_Info info, MPI_Comm *newcomm);
int PMPI_Comm_create_group(MPI_Comm comm, MPI_Group group, int tag, MPI_Comm *newcomm);
int PMPI_Get_elements_x(const MPI_Status *status, MPI_Datatype datatype, MPI_Count *count);
int PMPI_Status_set_elements_x(MPI_Status *status, MPI_Datatype datatype, MPI_Count count);
int PMPI_Type_get_extent_x(MPI_Datatype datatype, MPI_Count *lb, MPI_Count *extent);
int PMPI_Type_get_true_extent_x(MPI_Datatype datatype, MPI_Count *lb, MPI_Count *extent);
int PMPI_Type_size_x(MPI_Datatype datatype, MPI_Count *size);
MPI_Aint PMPI_Aint_add(MPI_Aint base, MPI_Aint disp);
MPI_Aint PMPI_Aint_diff(MPI_Aint addr1, MPI_Aint addr2);
int PMPI_T_init_thread(int required, int *provided);
int PMPI_T_finalize(void);
int PMPI_T_enum_get_info(MPI_T_enum enumtype, int *num, char *name, int *name_len);
int PMPI_T_enum_get_item(MPI_T_enum enumtype, int indx, int *value, char *name, int *name_len);
int PMPI_T_cvar_get_num(int *num_cvar);
int PMPI_T_cvar_get_info(int cvar_index, char *name, int *name_len, int *verbosity,
                         MPI_Datatype *datatype, MPI_T_enum *enumtype, char *desc, int *desc_len,
                         int *binding, int *scope);
int PMPI_T_cvar_handle_alloc(int cvar_index, void *obj_handle, MPI_T_cvar_handle *handle,
                             int *count);
int PMPI_T_cvar_handle_free(MPI_T_cvar_handle *handle);
int PMPI_T_cvar_read(MPI_T_cvar_handle handle, void *buf);
int PMPI_T_cvar_write(MPI_T_cvar_handle handle, const void *buf);
int PMPI_T_pvar_get_num(int *num_pvar);
int PMPI_T_pvar_get_info(int pvar_index, char *name, int *name_len, int *verbosity, int *var_class,
                         MPI_Datatype *datatype, MPI_T_enum *enumtype, char *desc, int *desc_len,
                         int *binding, int *readonly, int *continuous, int *atomic);
int PMPI_T_pvar_session_create(MPI_T_pvar_session *session);
int PMPI_T_pvar_session_free(MPI_T_pvar_session *session);
int PMPI_T_pvar_handle_alloc(MPI_T_pvar_session session, int pvar_index, void *obj_handle,
                             MPI_T_pvar_handle *handle, int *count);
int PMPI_T_pvar_handle_free(MPI_T_pvar_session session, MPI_T_pvar_handle *handle);
int PMPI_T_pvar_start(MPI_T_pvar_session session, MPI_T_pvar_handle handle);
int PMPI_T_pvar_stop(MPI_T_pvar_session session, MPI_T_pvar_handle handle);
int PMPI_T_pvar_read(MPI_T_pvar_session session, MPI_T_pvar_handle handle, void *buf);
int PMPI_T_pvar_write(MPI_T_pvar_session session, MPI_T_pvar_handle handle, const void *buf);
int PMPI_T_pvar_reset(MPI_T_pvar_session session, MPI_T_pvar_handle handle);
int PMPI_T_pvar_readreset(MPI_T_pvar_session session, MPI_T_pvar_handle handle, void *buf);
int PMPI_T_category_get_num(int *num_cat);
int PMPI_T_category_get_info(int cat_index, char *name, int *name_len, char *desc, int *desc_len,
                             int *num_cvars, int *num_pvars, int *num_categories);
int PMPI_T_category_get_cvars(int cat_index, int len, int indices[]);
int PMPI_T_category_get_pvars(int cat_index, int len, int indices[]);
int PMPI_T_category_get_categories(int cat_index, int len, int indices[]);
int PMPI_T_category_changed(int *stamp);
int PMPI_T_cvar_get_index(const char *name, int *cvar_index);
int PMPI_T_pvar_get_index(const char *name, int var_class, int *pvar_index);
int PMPI_T_category_get_index(const char *name, int *cat_index);
int PMPIX_Comm_failure_ack(MPI_Comm comm);
int PMPIX_Comm_failure_get_acked(MPI_Comm comm, MPI_Group *failedgrp);
int PMPIX_Comm_revoke(MPI_Comm comm);
int PMPIX_Comm_shrink(MPI_Comm comm, MPI_Comm *newcomm);
int PMPIX_Comm_agree(MPI_Comm comm, int *flag);
int MPI_File_open(MPI_Comm comm, const char *filename, int amode, MPI_Info info, MPI_File *fh);
int MPI_File_close(MPI_File *fh);
int MPI_File_delete(const char *filename, MPI_Info info);
int MPI_File_set_size(MPI_File fh, MPI_Offset size);
int MPI_File_preallocate(MPI_File fh, MPI_Offset size);
int MPI_File_get_size(MPI_File fh, MPI_Offset *size);
int MPI_File_get_group(MPI_File fh, MPI_Group *group);
int MPI_File_get_amode(MPI_File fh, int *amode);
int MPI_File_set_info(MPI_File fh, MPI_Info info);
int MPI_File_get_info(MPI_File fh, MPI_Info *info_used);
int MPI_File_set_view(MPI_File fh, MPI_Offset disp, MPI_Datatype etype, MPI_Datatype filetype,
                      const char *datarep, MPI_Info info);
int MPI_File_get_view(MPI_File fh, MPI_Offset *disp, MPI_Datatype *etype, MPI_Datatype *filetype,
                      char *datarep);
int MPI_File_read_at(MPI_File fh, MPI_Offset offset, void *buf, int count, MPI_Datatype datatype,
                     MPI_Status *status) ;
int MPI_File_read_at_all(MPI_File fh, MPI_Offset offset, void * buf, int count,
                         MPI_Datatype datatype, MPI_Status *status)
    ;
int MPI_File_write_at(MPI_File fh, MPI_Offset offset, const void * buf, int count,
                      MPI_Datatype datatype, MPI_Status *status)
    ;
int MPI_File_write_at_all(MPI_File fh, MPI_Offset offset, const void *buf, int count,
                          MPI_Datatype datatype, MPI_Status *status)
    ;
int MPI_File_iread_at(MPI_File fh, MPI_Offset offset, void *buf, int count, MPI_Datatype datatype,
                      MPI_Request *request) ;
int MPI_File_iwrite_at(MPI_File fh, MPI_Offset offset, const void *buf, int count,
                       MPI_Datatype datatype, MPI_Request *request)
    ;
int MPI_File_read(MPI_File fh, void *buf, int count, MPI_Datatype datatype, MPI_Status *status)
    ;
int MPI_File_read_all(MPI_File fh, void *buf, int count, MPI_Datatype datatype, MPI_Status *status)
    ;
int MPI_File_write(MPI_File fh, const void *buf, int count, MPI_Datatype datatype,
                   MPI_Status *status) ;
int MPI_File_write_all(MPI_File fh, const void *buf, int count, MPI_Datatype datatype,
                       MPI_Status *status) ;
int MPI_File_iread(MPI_File fh, void *buf, int count, MPI_Datatype datatype, MPI_Request *request)
    ;
int MPI_File_iwrite(MPI_File fh, const void *buf, int count, MPI_Datatype datatype,
                    MPI_Request *request) ;
int MPI_File_seek(MPI_File fh, MPI_Offset offset, int whence);
int MPI_File_get_position(MPI_File fh, MPI_Offset *offset);
int MPI_File_get_byte_offset(MPI_File fh, MPI_Offset offset, MPI_Offset *disp);
int MPI_File_read_shared(MPI_File fh, void *buf, int count, MPI_Datatype datatype,
                         MPI_Status *status) ;
int MPI_File_write_shared(MPI_File fh, const void *buf, int count, MPI_Datatype datatype,
                          MPI_Status *status) ;
int MPI_File_iread_shared(MPI_File fh, void *buf, int count, MPI_Datatype datatype,
                          MPI_Request *request) ;
int MPI_File_iwrite_shared(MPI_File fh, const void *buf, int count, MPI_Datatype datatype,
                           MPI_Request *request) ;
int MPI_File_read_ordered(MPI_File fh, void *buf, int count, MPI_Datatype datatype,
                          MPI_Status *status) ;
int MPI_File_write_ordered(MPI_File fh, const void *buf, int count, MPI_Datatype datatype,
                           MPI_Status *status) ;
int MPI_File_seek_shared(MPI_File fh, MPI_Offset offset, int whence);
int MPI_File_get_position_shared(MPI_File fh, MPI_Offset *offset);
int MPI_File_read_at_all_begin(MPI_File fh, MPI_Offset offset, void *buf, int count,
                               MPI_Datatype datatype) ;
int MPI_File_read_at_all_end(MPI_File fh, void *buf, MPI_Status *status);
int MPI_File_write_at_all_begin(MPI_File fh, MPI_Offset offset, const void *buf, int count,
                                MPI_Datatype datatype) ;
int MPI_File_write_at_all_end(MPI_File fh, const void *buf, MPI_Status *status);
int MPI_File_read_all_begin(MPI_File fh, void *buf, int count, MPI_Datatype datatype)
    ;
int MPI_File_read_all_end(MPI_File fh, void *buf, MPI_Status *status);
int MPI_File_write_all_begin(MPI_File fh, const void *buf, int count, MPI_Datatype datatype)
    ;
int MPI_File_write_all_end(MPI_File fh, const void *buf, MPI_Status *status);
int MPI_File_read_ordered_begin(MPI_File fh, void *buf, int count, MPI_Datatype datatype)
    ;
int MPI_File_read_ordered_end(MPI_File fh, void *buf, MPI_Status *status);
int MPI_File_write_ordered_begin(MPI_File fh, const void *buf, int count, MPI_Datatype datatype)
    ;
int MPI_File_write_ordered_end(MPI_File fh, const void *buf, MPI_Status *status);
int MPI_File_get_type_extent(MPI_File fh, MPI_Datatype datatype, MPI_Aint *extent);
int MPI_Register_datarep(const char *datarep, MPI_Datarep_conversion_function *read_conversion_fn,
    MPI_Datarep_conversion_function *write_conversion_fn,
    MPI_Datarep_extent_function *dtype_file_extent_fn, void *extra_state);
int MPI_File_set_atomicity(MPI_File fh, int flag);
int MPI_File_get_atomicity(MPI_File fh, int *flag);
int MPI_File_sync(MPI_File fh);
int MPI_File_iread_at_all(MPI_File fh, MPI_Offset offset, void *buf, int count,
                           MPI_Datatype datatype, MPI_Request *request)
    ;
int MPI_File_iwrite_at_all(MPI_File fh, MPI_Offset offset, const void *buf, int count,
                            MPI_Datatype datatype, MPI_Request *request)
    ;
int MPI_File_iread_all(MPI_File fh, void *buf, int count, MPI_Datatype datatype,
                        MPI_Request *request)
    ;
int MPI_File_iwrite_all(MPI_File fh, const void *buf, int count, MPI_Datatype datatype,
                         MPI_Request *request)
    ;
MPI_File MPI_File_f2c(MPI_Fint file);
MPI_Fint MPI_File_c2f(MPI_File file);
int PMPI_File_open(MPI_Comm, const char *, int, MPI_Info, MPI_File *);
int PMPI_File_close(MPI_File *);
int PMPI_File_delete(const char *, MPI_Info);
int PMPI_File_set_size(MPI_File, MPI_Offset);
int PMPI_File_preallocate(MPI_File, MPI_Offset);
int PMPI_File_get_size(MPI_File, MPI_Offset *);
int PMPI_File_get_group(MPI_File, MPI_Group *);
int PMPI_File_get_amode(MPI_File, int *);
int PMPI_File_set_info(MPI_File, MPI_Info);
int PMPI_File_get_info(MPI_File, MPI_Info *);
int PMPI_File_set_view(MPI_File, MPI_Offset,
    MPI_Datatype, MPI_Datatype, const char *, MPI_Info);
int PMPI_File_get_view(MPI_File, MPI_Offset *,
      MPI_Datatype *, MPI_Datatype *, char *);
int PMPI_File_read_at(MPI_File, MPI_Offset, void *,
       int, MPI_Datatype, MPI_Status *)
              ;
int PMPI_File_read_at_all(MPI_File, MPI_Offset, void *,
       int, MPI_Datatype, MPI_Status *)
              ;
int PMPI_File_write_at(MPI_File, MPI_Offset, const void *,
       int, MPI_Datatype, MPI_Status *)
              ;
int PMPI_File_write_at_all(MPI_File, MPI_Offset, const void *,
       int, MPI_Datatype, MPI_Status *)
              ;
int PMPI_File_iread_at(MPI_File, MPI_Offset, void *,
       int, MPI_Datatype, MPI_Request *)
              ;
int PMPI_File_iwrite_at(MPI_File, MPI_Offset, const void *,
       int, MPI_Datatype, MPI_Request *)
              ;
int PMPI_File_read(MPI_File, void *, int, MPI_Datatype, MPI_Status *)
                   ;
int PMPI_File_read_all(MPI_File, void *, int, MPI_Datatype, MPI_Status *)
                       ;
int PMPI_File_write(MPI_File, const void *, int, MPI_Datatype, MPI_Status *)
                    ;
int PMPI_File_write_all(MPI_File, const void *, int, MPI_Datatype, MPI_Status *)
                        ;
int PMPI_File_iread(MPI_File, void *, int, MPI_Datatype, MPI_Request *)
                    ;
int PMPI_File_iwrite(MPI_File, const void *, int, MPI_Datatype, MPI_Request *)
                     ;
int PMPI_File_seek(MPI_File, MPI_Offset, int);
int PMPI_File_get_position(MPI_File, MPI_Offset *);
int PMPI_File_get_byte_offset(MPI_File, MPI_Offset, MPI_Offset *);
int PMPI_File_read_shared(MPI_File, void *, int, MPI_Datatype, MPI_Status *)
                          ;
int PMPI_File_write_shared(MPI_File, const void *, int, MPI_Datatype, MPI_Status *)
                           ;
int PMPI_File_iread_shared(MPI_File, void *, int,
      MPI_Datatype, MPI_Request *)
                           ;
int PMPI_File_iwrite_shared(MPI_File, const void *, int,
       MPI_Datatype, MPI_Request *)
                            ;
int PMPI_File_read_ordered(MPI_File, void *, int, MPI_Datatype, MPI_Status *)
                           ;
int PMPI_File_write_ordered(MPI_File, const void *, int, MPI_Datatype, MPI_Status *)
                            ;
int PMPI_File_seek_shared(MPI_File, MPI_Offset, int);
int PMPI_File_get_position_shared(MPI_File, MPI_Offset *);
int PMPI_File_read_at_all_begin(MPI_File, MPI_Offset, void *,
                               int, MPI_Datatype)
                               ;
int PMPI_File_read_at_all_end(MPI_File, void *, MPI_Status *);
int PMPI_File_write_at_all_begin(MPI_File, MPI_Offset, const void *,
                                 int, MPI_Datatype)
                                 ;
int PMPI_File_write_at_all_end(MPI_File, const void *, MPI_Status *);
int PMPI_File_read_all_begin(MPI_File, void *, int, MPI_Datatype)
                             ;
int PMPI_File_read_all_end(MPI_File, void *, MPI_Status *);
int PMPI_File_write_all_begin(MPI_File, const void *, int, MPI_Datatype)
                              ;
int PMPI_File_write_all_end(MPI_File, const void *, MPI_Status *);
int PMPI_File_read_ordered_begin(MPI_File, void *, int, MPI_Datatype)
                                 ;
int PMPI_File_read_ordered_end(MPI_File, void *, MPI_Status *);
int PMPI_File_write_ordered_begin(MPI_File, const void *, int, MPI_Datatype)
                                  ;
int PMPI_File_write_ordered_end(MPI_File, const void *, MPI_Status *);
int PMPI_File_get_type_extent(MPI_File, MPI_Datatype, MPI_Aint *);
int PMPI_Register_datarep(const char *,
    MPI_Datarep_conversion_function *,
    MPI_Datarep_conversion_function *,
    MPI_Datarep_extent_function *,
    void *);
int PMPI_File_set_atomicity(MPI_File, int);
int PMPI_File_get_atomicity(MPI_File, int *);
int PMPI_File_sync(MPI_File);
int PMPI_File_iread_at_all(MPI_File fh, MPI_Offset offset, void *buf, int count,
                            MPI_Datatype datatype, MPI_Request *request)
    ;
int PMPI_File_iwrite_at_all(MPI_File fh, MPI_Offset offset, const void *buf, int count,
                             MPI_Datatype datatype, MPI_Request *request)
    ;
int PMPI_File_iread_all(MPI_File fh, void *buf, int count, MPI_Datatype datatype,
                         MPI_Request *request)
    ;
int PMPI_File_iwrite_all(MPI_File fh, const void *buf, int count, MPI_Datatype datatype,
                          MPI_Request *request)
    ;
MPI_File PMPI_File_f2c(MPI_Fint);
MPI_Fint PMPI_File_c2f(MPI_File);
typedef int MPIX_Grequest_class;
int MPIX_Grequest_class_create(MPI_Grequest_query_function *query_fn,
                               MPI_Grequest_free_function *free_fn,
                               MPI_Grequest_cancel_function *cancel_fn,
                               MPIX_Grequest_poll_function *poll_fn,
                               MPIX_Grequest_wait_function *wait_fn,
                               MPIX_Grequest_class *greq_class);
int MPIX_Grequest_class_allocate(MPIX_Grequest_class greq_class, void *extra_state,
                                 MPI_Request *request);
int MPIX_Grequest_start(MPI_Grequest_query_function *query_fn,
                        MPI_Grequest_free_function *free_fn,
                        MPI_Grequest_cancel_function *cancel_fn,
                        MPIX_Grequest_poll_function *poll_fn,
                        MPIX_Grequest_wait_function *wait_fn, void *extra_state,
                        MPI_Request *request);
struct mpixi_mutex_s;
typedef struct mpixi_mutex_s * MPIX_Mutex;
int MPIX_Mutex_create(int count, MPI_Comm comm, MPIX_Mutex *hdl);
int MPIX_Mutex_free(MPIX_Mutex *hdl);
int MPIX_Mutex_lock(MPIX_Mutex hdl, int mutex, int proc);
int MPIX_Mutex_unlock(MPIX_Mutex hdl, int mutex, int proc);
int PMPIX_Grequest_class_create(MPI_Grequest_query_function *query_fn,
                                MPI_Grequest_free_function *free_fn,
                                MPI_Grequest_cancel_function *cancel_fn,
                                MPIX_Grequest_poll_function *poll_fn,
                                MPIX_Grequest_wait_function *wait_fn,
                                MPIX_Grequest_class *greq_class);
int PMPIX_Grequest_class_allocate(MPIX_Grequest_class greq_class, void *extra_state,
                                  MPI_Request *request);
int PMPIX_Grequest_start(MPI_Grequest_query_function *query_fn,
                         MPI_Grequest_free_function *free_fn,
                         MPI_Grequest_cancel_function *cancel_fn,
                         MPIX_Grequest_poll_function *poll_fn,
                         MPIX_Grequest_wait_function *wait_fn, void *extra_state,
                         MPI_Request *request);
int PMPIX_Mutex_create(int count, MPI_Comm comm, MPIX_Mutex *hdl);
int PMPIX_Mutex_free(MPIX_Mutex *hdl);
int PMPIX_Mutex_lock(MPIX_Mutex hdl, int mutex, int proc);
int PMPIX_Mutex_unlock(MPIX_Mutex hdl, int mutex, int proc);
extern void __VERIFIER_error();
extern int __VERIFIER_nondet_int();
extern double __VERIFIER_nondet_double();
long nx, ny;
int nsteps, wstep;
int NPROCSX, NPROCSY;
double constTemp;
double initTemp;
double k;
int nprocs, rank;
int left, right, top, bottom;
int nxl;
int nyl;
long firstCol;
long firstRow;
double (* u_curr)[];
double (* u_next)[];
double * recvbuf;
double (* oracle)[];
long firstColForProc(int rank) {
  long tmp = (rank - (rank / NPROCSX)*NPROCSX)*nx;
  return tmp/NPROCSX;
}
long firstRowForProc(int rank) {
  long tmp = ((rank / NPROCSX)*ny);
  return tmp/NPROCSY;
}
int countColForProc(int rank) {
  long a = firstColForProc(rank);
  long b;
  if ((rank / NPROCSX) == ((rank+1) / NPROCSX))
    b = firstColForProc(rank+1);
  else
    b = nx;
  return b - a;
}
int countRowForProc(int rank) {
  long a = firstRowForProc(rank);
  long b = firstRowForProc(rank+NPROCSX);
  return b - a;
}
int OWNER(long col, long row) {
  long tmp = ((NPROCSY * (row+1))-1);
  int procRow = tmp / ny;
  int procCol;
  tmp = ((col + 1) * NPROCSX - 1);
  procCol = tmp / nx;
  tmp = procRow * NPROCSX;
  return tmp + procCol;
}
void initData(double (*u_curr)[nx+2], double (*u_next)[nx+2]) {
  for (int i=0; i < nyl+2; i++)
    for (int j=0; j < nxl+2; j++)
      if (i == 0 || j == 0 || i == nyl+1 || j == nxl+1)
        u_next[i][j] = u_curr[i][j] = constTemp;
      else
        u_curr[i][j] = initTemp;
}
void initialization(int argc, char * argv[]) {
  if (argc != 3) {
    if(rank == 0) {
      printf("Usage: mpiexec -n NPROCS diffusion2d NPROCSX NPROCSY NX NY NSTEPS\n"
      "  NPROCSX: number of processes in x direction\n"
      "  NPROCSY: number of processes in y direction\n"
      "  NPROCS: the product of NPROCSX and NPROCSY\n");
    }
    exit(1);
  }
  NPROCSX = atoi(argv[1]);
  NPROCSY = atoi(argv[2]);
  (__builtin_expect(!(NPROCSX * NPROCSY == nprocs), 0) ? __assert_rtn(__func__, "diffusion2d_mpi_true-unreach-call.c", 157, "NPROCSX * NPROCSY == nprocs") : (void)0);
  if (rank == 0) {
    nx = __VERIFIER_nondet_int();
    ny = __VERIFIER_nondet_int();
    nsteps = __VERIFIER_nondet_int();
    initTemp = __VERIFIER_nondet_double();
  }
  MPI_Bcast(&nx, 1, ((MPI_Datatype)0x4c000405), 0, ((MPI_Comm)0x44000000));
  MPI_Bcast(&ny, 1, ((MPI_Datatype)0x4c000405), 0, ((MPI_Comm)0x44000000));
  MPI_Bcast(&nsteps, 1, ((MPI_Datatype)0x4c000405), 0, ((MPI_Comm)0x44000000));
  MPI_Bcast(&initTemp, 1, ((MPI_Datatype)0x4c00080b), 0, ((MPI_Comm)0x44000000));
  (__builtin_expect(!(nx > 0 && ny > 0), 0) ? __assert_rtn(__func__, "diffusion2d_mpi_true-unreach-call.c", 168, "nx > 0 && ny > 0") : (void)0);
  (__builtin_expect(!(nsteps >= wstep), 0) ? __assert_rtn(__func__, "diffusion2d_mpi_true-unreach-call.c", 169, "nsteps >= wstep") : (void)0);
  wstep = 10;
  constTemp = 0.0;
  k = 0.13;
  if(!rank)
    printf("Diffusion2d with k=%f, nx=%ld, ny=%ld, nsteps=%d, wstep=%d, initTemp=%6.2f\n",
    k, nx, ny, nsteps, wstep, initTemp);
  nxl = countColForProc(rank);
  nyl = countRowForProc(rank);
  if (rank == OWNER(0, 0))
    recvbuf = (double *)malloc((nxl + 1) * sizeof(double));
  u_curr = (double (*)[nx+2])malloc((nyl + 2) * sizeof(double [nx + 2]));
  (__builtin_expect(!(u_curr), 0) ? __assert_rtn(__func__, "diffusion2d_mpi_true-unreach-call.c", 181, "u_curr") : (void)0);
  u_next = (double (*)[nx+2])malloc((nyl + 2) * sizeof(double [nx + 2]));
  (__builtin_expect(!(u_next), 0) ? __assert_rtn(__func__, "diffusion2d_mpi_true-unreach-call.c", 183, "u_next") : (void)0);
  firstCol = firstColForProc(rank);
  firstRow = firstRowForProc(rank);
  if (firstCol != 0)
    left = OWNER(firstCol - 1, firstRow);
  else
    left = (-1);
  if (firstRow != 0)
    top = OWNER(firstCol, firstRow - 1);
  else
    top = (-1);
  if (firstCol + nxl < nx)
    right = OWNER(firstCol + nxl, firstRow);
  else
    right = (-1);
  if (firstRow + nyl < ny)
    bottom = OWNER(firstCol, firstRow + nyl);
  else
    bottom = (-1);
  if (rank == OWNER(0, 0)) {
    oracle = (double (*)[nx + 2])malloc(sizeof(double [nx + 2]) * nsteps * (ny + 2));
    (__builtin_expect(!(oracle), 0) ? __assert_rtn(__func__, "diffusion2d_mpi_true-unreach-call.c", 206, "oracle") : (void)0);
    double (*oracle_curr)[nx + 2] = oracle;
    double (*oracle_next)[nx + 2] = oracle_curr + ny + 2;
    for (int i=0; i < ny+2; i++)
      for (int j=0; j < nx+2; j++)
 if (i == 0 || j == 0 || i == ny+1 || j == nx+1) {
   oracle_next[i][j] = constTemp;
   oracle_curr[i][j] = constTemp;
 }
 else
   oracle_curr[i][j] = initTemp;
    for (int t=1; t <= nsteps; t++) {
      for (long i = 0; i < ny + 2; i++)
        for (long j = 0; j < nx + 2; j++)
          if (i==0 || j==0 || i == ny + 1 || j == nx + 1)
            oracle_next[i][j] = oracle_curr[i][j];
          else
            oracle_next[i][j] = oracle_curr[i][j] +
              k*(oracle_curr[i+1][j] + oracle_curr[i-1][j] +
                 oracle_curr[i][j+1] + oracle_curr[i][j-1] -
                 4*oracle_curr[i][j]);
      for (long i = 0; i < ny + 2; i++) {
        for (long j = 0; j < nx + 2; j++)
   printf("%6.2f", oracle_curr[i][j]);
 printf("\n");
      }
      printf("\n");
      oracle_curr = t < nsteps ? oracle_curr + ny + 2 : ((void *)0);
      oracle_next = t < nsteps ? oracle_curr + ny + 2 : ((void *)0);
    }
  }
}
void update(double (*u_curr)[nx+2], double (*u_next)[nx+2]) {
  for (int i = 1; i < nyl + 1; i++)
    for (int j = 1; j < nxl + 1; j++) {
      u_next[i][j] = u_curr[i][j] +
        k*(u_curr[i+1][j] + u_curr[i-1][j] +
           u_curr[i][j+1] + u_curr[i][j-1] - 4*u_curr[i][j]);
    }
}
void exchange(double (*u_curr)[nx+2]) {
  double sendbuf[nyl];
  double recvbuf[nyl];
  MPI_Sendrecv(&u_curr[1][1], nxl, ((MPI_Datatype)0x4c00080b), top, 0, &u_curr[nyl+1][1], nxl,
               ((MPI_Datatype)0x4c00080b), bottom, 0, ((MPI_Comm)0x44000000), (MPI_Status *)1);
  MPI_Sendrecv(&u_curr[nyl][1], nxl, ((MPI_Datatype)0x4c00080b), bottom, 0, &u_curr[0][1], nxl,
               ((MPI_Datatype)0x4c00080b), top, 0, ((MPI_Comm)0x44000000), (MPI_Status *)1);
  for (int i = 0; i < nyl; i++) sendbuf[i] = u_curr[i+1][1];
  MPI_Sendrecv(sendbuf, nyl, ((MPI_Datatype)0x4c00080b), left, 0, recvbuf, nyl,
               ((MPI_Datatype)0x4c00080b), right, 0, ((MPI_Comm)0x44000000), (MPI_Status *)1);
  if (right != (-1))
    for (int i = 0; i < nyl; i++) u_curr[i+1][nxl+1] = recvbuf[i];
  for (int i = 0; i < nyl; i++) sendbuf[i] = u_curr[i+1][nxl];
  MPI_Sendrecv(sendbuf, nyl, ((MPI_Datatype)0x4c00080b), right, 0, recvbuf, nyl,
               ((MPI_Datatype)0x4c00080b), left, 0, ((MPI_Comm)0x44000000), (MPI_Status *)1);
  if (left != (-1))
    for (int i = 0; i < nyl; i++) u_curr[i+1][0] = recvbuf[i];
}
void printData(int time, int firstCol, int nxl, int currRow, double * buf) {
  double (*oracle_time)[nx+2] = oracle;
  oracle_time += (time) * (ny + 2);
  for (int i=0; i<nxl; i++) {
    printf("%6.2f ", *(buf + i));
    if(!(*(buf + i) == oracle_time[currRow + 1][firstCol + 1 + i])) __VERIFIER_error();
  }
}
void write_frame(int time, double (*u_curr)[nx+2]) {
  if (rank != OWNER(0, 0)) {
    for (int i=0; i<nyl; i++)
      MPI_Send(&u_curr[i+1][1], nxl, ((MPI_Datatype)0x4c00080b), 0, 1, ((MPI_Comm)0x44000000));
  } else {
    printf("\n-------------------- time step:%d --------------------\n", time);
    for (int i=0; i < NPROCSY; i++) {
      int numRows = countRowForProc(i*NPROCSX);
      for (int j=0; j < numRows; j++) {
        for (int k=0; k < NPROCSX; k++) {
          int curr_rank = i*NPROCSX + k;
          if (curr_rank != OWNER(0, 0)) {
            int senderx = firstColForProc(curr_rank);
            int sendery = firstRowForProc(curr_rank);
            int senderNxl = countColForProc(curr_rank);
            MPI_Recv(recvbuf, senderNxl, ((MPI_Datatype)0x4c00080b), curr_rank, 1, ((MPI_Comm)0x44000000),
       (MPI_Status *)1);
            printData(time, senderx, senderNxl, sendery+j, recvbuf);
          } else
            printData(time, firstCol, nxl, firstRow+j, &u_curr[j+1][1]);
        }
        printf("\n");
      }
    }
  }
}
int main(int argc, char * argv[]) {
  int i;
  MPI_Init(&argc, &argv);
  MPI_Comm_rank(((MPI_Comm)0x44000000), &rank);
  MPI_Comm_size(((MPI_Comm)0x44000000), &nprocs);
  initialization(argc, argv);
  initData(u_curr, u_next);
  for (i=0; i<=nsteps; i++) {
    void * tmp;
    if (i%wstep == 0)
      write_frame(i, u_curr);
    exchange(u_curr);
    update(u_curr, u_next);
    tmp = u_curr; u_curr = u_next; u_next = tmp;
  }
  free(u_curr);
  free(u_next);
  if (rank == OWNER(0,0)) {
    free(recvbuf);
    free(oracle);
  }
  return 0;
}
