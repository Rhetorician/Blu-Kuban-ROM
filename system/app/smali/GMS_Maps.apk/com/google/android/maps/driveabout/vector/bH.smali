.class abstract Lcom/google/android/maps/driveabout/vector/bh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/bl;


# instance fields
.field protected a:[I

.field final synthetic b:Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;[I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 915
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bh;->b:Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 916
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/bh;->a([I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bh;->a:[I

    .line 917
    return-void
.end method

.method private a([I)[I
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 951
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bh;->b:Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->a(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    .line 963
    :goto_a
    return-object p1

    .line 957
    :cond_b
    array-length v1, p1

    .line 958
    add-int/lit8 v0, v1, 0x2

    new-array v0, v0, [I

    .line 959
    add-int/lit8 v2, v1, -0x1

    invoke-static {p1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 960
    add-int/lit8 v2, v1, -0x1

    const/16 v3, 0x3040

    aput v3, v0, v2

    .line 961
    const/4 v2, 0x4

    aput v2, v0, v1

    .line 962
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x3038

    aput v2, v0, v1

    move-object p1, v0

    .line 963
    goto :goto_a
.end method


# virtual methods
.method public a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 920
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 921
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bh;->a:[I

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_17

    .line 923
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 926
    :cond_17
    aget v4, v5, v4

    .line 928
    if-gtz v4, :cond_23

    .line 929
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 933
    :cond_23
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 934
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bh;->a:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_37

    .line 936
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig#2 failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 938
    :cond_37
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/maps/driveabout/vector/bh;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    .line 939
    if-nez v0, :cond_45

    .line 940
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No config chosen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 942
    :cond_45
    return-object v0
.end method

.method abstract a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
.end method
