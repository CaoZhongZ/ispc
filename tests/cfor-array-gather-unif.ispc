
export uniform int width() { return programCount; }

#define SIZE TARGET_WIDTH+1

export void f_fu(uniform float RET[], uniform float aFOO[], uniform float b) {
    float a = aFOO[programIndex];
    uniform float x[SIZE];
    uniform int i;
    #pragma ignore warning
    cfor (i = 0; i < SIZE; ++i)
        x[i] = i+b;
    #pragma ignore warning(perf)
    RET[programIndex] = x[a];
}


export void result(uniform float RET[]) {
    RET[programIndex] = 6+programIndex;
}
