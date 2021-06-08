#include <math.h>
#include "sleefinline_purec_scalar.h"

float static inline BMAS_scalar_sadd(float a, float b){return a+b;}
float static inline BMAS_scalar_ssub(float a, float b){return a-b;}
float static inline BMAS_scalar_smul(float a, float b){return a*b;}
float static inline BMAS_scalar_sdiv(float a, float b){return a/b;}

double static inline BMAS_scalar_dadd(double a, double b){return a+b;}
double static inline BMAS_scalar_dsub(double a, double b){return a-b;}
double static inline BMAS_scalar_dmul(double a, double b){return a*b;}
double static inline BMAS_scalar_ddiv(double a, double b){return a/b;}


int64_t static inline BMAS_scalar_i64add(int64_t a, int64_t b){return a+b;}
int32_t static inline BMAS_scalar_i32add(int32_t a, int32_t b){return a+b;}
int16_t static inline BMAS_scalar_i16add(int16_t a, int16_t b){return a+b;}
int8_t  static inline BMAS_scalar_i8add(int8_t a, int8_t b){return a+b;}

uint64_t static inline BMAS_scalar_u64add(uint64_t a, uint64_t b){return a+b;}
uint32_t static inline BMAS_scalar_u32add(uint32_t a, uint32_t b){return a+b;}
uint16_t static inline BMAS_scalar_u16add(uint16_t a, uint16_t b){return a+b;}
uint8_t  static inline BMAS_scalar_u8add (uint8_t a,  uint8_t b){return a+b;}


_Bool static inline BMAS_scalar_slt(float a, float b){return a<b;}
_Bool static inline BMAS_scalar_sle(float a, float b){return a<=b;}
_Bool static inline BMAS_scalar_seq(float a, float b){return a==b;}
_Bool static inline BMAS_scalar_sneq(float a, float b){return a!=b;}
_Bool static inline BMAS_scalar_sge(float a, float b){return a>=b;}
_Bool static inline BMAS_scalar_sgt(float a, float b){return a>b;}

_Bool static inline BMAS_scalar_dlt(double a, double b){return a<b;}
_Bool static inline BMAS_scalar_dle(double a, double b){return a<=b;}
_Bool static inline BMAS_scalar_deq(double a, double b){return a==b;}
_Bool static inline BMAS_scalar_dneq(double a, double b){return a!=b;}
_Bool static inline BMAS_scalar_dge(double a, double b){return a>=b;}
_Bool static inline BMAS_scalar_dgt(double a, double b){return a>b;}


// trigonometric

float static inline BMAS_scalar_ssin(float a){return sinf(a);}
float static inline BMAS_scalar_scos(float a){return cosf(a);}
float static inline BMAS_scalar_stan(float a){return tanf(a);}

float static inline BMAS_scalar_sasin(float a){return asinf(a);}
float static inline BMAS_scalar_sacos(float a){return acosf(a);}
float static inline BMAS_scalar_satan(float a){return atanf(a);}

float static inline BMAS_scalar_ssinh(float a){return sinhf(a);}
float static inline BMAS_scalar_scosh(float a){return coshf(a);}
float static inline BMAS_scalar_stanh(float a){return tanhf(a);}

float static inline BMAS_scalar_sasinh(float a){return asinhf(a);}
float static inline BMAS_scalar_sacosh(float a){return acoshf(a);}
float static inline BMAS_scalar_satanh(float a){return atanhf(a);}


double static inline BMAS_scalar_dsin(double a){return sin(a);}
double static inline BMAS_scalar_dcos(double a){return cos(a);}
double static inline BMAS_scalar_dtan(double a){return tan(a);}

double static inline BMAS_scalar_dasin(double a){return asin(a);}
double static inline BMAS_scalar_dacos(double a){return acos(a);}
double static inline BMAS_scalar_datan(double a){return atan(a);}

double static inline BMAS_scalar_dsinh(double a){return sinh(a);}
double static inline BMAS_scalar_dcosh(double a){return cosh(a);}
double static inline BMAS_scalar_dtanh(double a){return tanh(a);}

double static inline BMAS_scalar_dasinh(double a){return asinh(a);}
double static inline BMAS_scalar_dacosh(double a){return acosh(a);}
double static inline BMAS_scalar_datanh(double a){return atanh(a);}

// log

float static inline BMAS_scalar_slog(float a)  {return logf(a);}
float static inline BMAS_scalar_slog10(float a){return log10f(a);}
float static inline BMAS_scalar_slog2(float a) {return log2f(a);}
float static inline BMAS_scalar_slog1p(float a){return log1pf(a);}

double static inline BMAS_scalar_dlog(double a)  {return log(a);}
double static inline BMAS_scalar_dlog10(double a){return log10(a);}
double static inline BMAS_scalar_dlog2(double a) {return log2(a);}
double static inline BMAS_scalar_dlog1p(double a){return log1p(a);}

// exp

float static inline BMAS_scalar_sexp(float a)  {return expf(a);}
float static inline BMAS_scalar_sexp10(float a){return Sleef_exp10f1_u10purec(a);}
float static inline BMAS_scalar_sexp2(float a) {return exp2f(a);}
float static inline BMAS_scalar_sexpm1(float a){return expm1f(a);}

double static inline BMAS_scalar_dexp(double a)  {return exp(a);}
double static inline BMAS_scalar_dexp10(double a){return Sleef_exp10d1_u10purec(a);}
double static inline BMAS_scalar_dexp2(double a) {return exp2(a);}
double static inline BMAS_scalar_dexpm1(double a){return expm1(a);}

// pow and atan2

float static inline BMAS_scalar_spow(float x, float y){return powf(x, y);}
float static inline BMAS_scalar_satan2(float x, float y){return atan2f(x, y);}

double static inline BMAS_scalar_dpow(double x, double y){return pow(x, y);}
double static inline BMAS_scalar_datan2(double x, double y){return atan2(x, y);}

// misc

float static inline BMAS_scalar_sfabs(float x)  { return fabsf(x);}
float static inline BMAS_scalar_sceil(float x)  { return ceilf(x);}
float static inline BMAS_scalar_strunc(float x) { return truncf(x);}
float static inline BMAS_scalar_sfloor(float x) { return floorf(x);}
float static inline BMAS_scalar_sround(float x) { return roundf(x);}

double static inline BMAS_scalar_dfabs(double x)  { return fabs(x);}
double static inline BMAS_scalar_dceil(double x)  { return ceil(x);}
double static inline BMAS_scalar_dtrunc(double x) { return trunc(x);}
double static inline BMAS_scalar_dfloor(double x) { return floor(x);}
double static inline BMAS_scalar_dround(double x) { return round(x);}


