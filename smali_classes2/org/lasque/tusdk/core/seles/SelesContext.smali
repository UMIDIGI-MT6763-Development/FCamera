.class public Lorg/lasque/tusdk/core/seles/SelesContext;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/seles/SelesContext$ResponseListener;,
        Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;
    }
.end annotation


# static fields
.field private static a:Lorg/lasque/tusdk/core/seles/SelesContext;


# instance fields
.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private final n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljavax/microedition/khronos/egl/EGLContext;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/lasque/tusdk/core/seles/SelesGLProgram;",
            ">;>;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lorg/lasque/tusdk/core/seles/SelesFramebufferCache;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljavax/microedition/khronos/egl/EGLContext;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private q:Z

.field private r:Z

.field private s:Z


# direct methods
.method private constructor <init>()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesContext;->n:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesContext;->o:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesContext;->p:Ljava/util/HashMap;

    return-void
.end method

.method private a(I)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    aget p1, v0, v1

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesContext;->n:Ljava/util/HashMap;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/SelesContext;->getCurrentEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "Can not find GLProgram: %s"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/SelesContext;->getCurrentEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    aput-object v0, p2, v2

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v3, "V: %s - F: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    if-nez v2, :cond_1

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v2
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/SelesContext;->b(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/SelesContext;->b:Z

    iget-boolean p1, p0, Lorg/lasque/tusdk/core/seles/SelesContext;->b:Z

    if-nez p1, :cond_0

    const-string p1, "OpenGL ES 2.0 is not supported on this device."

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 p1, 0x1

    invoke-static {p1, p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(II)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p1

    invoke-static {p1}, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->create(Lorg/lasque/tusdk/core/struct/TuSdkSize;)Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;

    move-result-object p1

    const/16 v0, 0xd33

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/SelesContext;->a(I)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/SelesContext;->c:I

    const v0, 0x8872

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/SelesContext;->a(I)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/SelesContext;->e:I

    const v0, 0x8869

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/SelesContext;->a(I)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/SelesContext;->f:I

    const v0, 0x8dfb

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/SelesContext;->a(I)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/SelesContext;->g:I

    const v0, 0x8dfd

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/SelesContext;->a(I)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/SelesContext;->h:I

    const v0, 0x8b4c

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/SelesContext;->a(I)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/SelesContext;->i:I

    const v0, 0x8dfc

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/SelesContext;->a(I)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/SelesContext;->j:I

    const/16 v0, 0x1f01

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesContext;->k:Ljava/lang/String;

    const/16 v0, 0x1f00

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesContext;->l:Ljava/lang/String;

    const/16 v0, 0x1f03

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesContext;->m:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->destroy()V

    const-string p1, "GL_EXT_texture_rg"

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/SelesContext;->supportsOpenGLESExtension(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/SelesContext;->q:Z

    const-string p1, "GL_EXT_shader_framebuffer_fetch"

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/SelesContext;->supportsOpenGLESExtension(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/SelesContext;->r:Z

    const-string p1, "GL_OES_EGL_image_external"

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/SelesContext;->supportsOpenGLESExtension(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/SelesContext;->s:Z

    iget p1, p0, Lorg/lasque/tusdk/core/seles/SelesContext;->c:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesContext;->k:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->init(ILjava/lang/String;)V

    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->getMaxTextureOptimizedSize()I

    move-result p1

    iput p1, p0, Lorg/lasque/tusdk/core/seles/SelesContext;->d:I

    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/seles/SelesGLProgram;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->use()V

    return-void
.end method

.method private b(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    invoke-virtual {p1}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget p1, p1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v1, 0x20000

    if-lt p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static declared-synchronized createEGLContext(Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 4

    const-class v0, Lorg/lasque/tusdk/core/seles/SelesContext;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v2

    iget-object v2, v2, Lorg/lasque/tusdk/core/seles/SelesContext;->p:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v2

    iget-object v2, v2, Lorg/lasque/tusdk/core/seles/SelesContext;->n:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object p0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/SelesContext;->o:Ljava/util/HashMap;

    new-instance v2, Lorg/lasque/tusdk/core/seles/SelesFramebufferCache;

    invoke-direct {v2}, Lorg/lasque/tusdk/core/seles/SelesFramebufferCache;-><init>()V

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static currentEGLContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesContext;->getCurrentEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    return-object v0
.end method

.method public static currentGL()Ljavax/microedition/khronos/opengles/GL10;
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesContext;->getCurrentGL()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized destroyContext(Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 3

    const-class v0, Lorg/lasque/tusdk/core/seles/SelesContext;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v2

    iget-object v2, v2, Lorg/lasque/tusdk/core/seles/SelesContext;->o:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v1

    iget-object v1, v1, Lorg/lasque/tusdk/core/seles/SelesContext;->n:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v1

    iget-object v1, v1, Lorg/lasque/tusdk/core/seles/SelesContext;->p:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getCpuType()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    iget-object v0, v0, Lorg/lasque/tusdk/core/seles/SelesContext;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static getGpuInfo()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    iget-object v0, v0, Lorg/lasque/tusdk/core/seles/SelesContext;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static getMaxFragmentUniformVertors()I
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    iget v0, v0, Lorg/lasque/tusdk/core/seles/SelesContext;->h:I

    return v0
.end method

.method public static getMaxTextureImageUnits()I
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    iget v0, v0, Lorg/lasque/tusdk/core/seles/SelesContext;->e:I

    return v0
.end method

.method public static getMaxTextureOptimizedSize()I
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    iget v0, v0, Lorg/lasque/tusdk/core/seles/SelesContext;->d:I

    return v0
.end method

.method public static getMaxTextureSize()I
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    iget v0, v0, Lorg/lasque/tusdk/core/seles/SelesContext;->c:I

    return v0
.end method

.method public static getMaxVaryingVectors()I
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    iget v0, v0, Lorg/lasque/tusdk/core/seles/SelesContext;->j:I

    return v0
.end method

.method public static getMaxVertexAttribs()I
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    iget v0, v0, Lorg/lasque/tusdk/core/seles/SelesContext;->f:I

    return v0
.end method

.method public static getMaxVertexTextureImageUnits()I
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    iget v0, v0, Lorg/lasque/tusdk/core/seles/SelesContext;->i:I

    return v0
.end method

.method public static getMaxVertexUniformVertors()I
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    iget v0, v0, Lorg/lasque/tusdk/core/seles/SelesContext;->g:I

    return v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)Lorg/lasque/tusdk/core/seles/SelesContext;
    .locals 2

    const-class v0, Lorg/lasque/tusdk/core/seles/SelesContext;

    monitor-enter v0

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v1, Lorg/lasque/tusdk/core/seles/SelesContext;->a:Lorg/lasque/tusdk/core/seles/SelesContext;

    if-nez v1, :cond_0

    new-instance v1, Lorg/lasque/tusdk/core/seles/SelesContext;

    invoke-direct {v1}, Lorg/lasque/tusdk/core/seles/SelesContext;-><init>()V

    sput-object v1, Lorg/lasque/tusdk/core/seles/SelesContext;->a:Lorg/lasque/tusdk/core/seles/SelesContext;

    sget-object v1, Lorg/lasque/tusdk/core/seles/SelesContext;->a:Lorg/lasque/tusdk/core/seles/SelesContext;

    invoke-direct {v1, p0}, Lorg/lasque/tusdk/core/seles/SelesContext;->a(Landroid/content/Context;)V

    :cond_0
    sget-object p0, Lorg/lasque/tusdk/core/seles/SelesContext;->a:Lorg/lasque/tusdk/core/seles/SelesContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isSupportFrameBufferReads()Z
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    iget-boolean v0, v0, Lorg/lasque/tusdk/core/seles/SelesContext;->r:Z

    return v0
.end method

.method public static isSupportGL2()Z
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    iget-boolean v0, v0, Lorg/lasque/tusdk/core/seles/SelesContext;->b:Z

    return v0
.end method

.method public static isSupportOESImageExternal()Z
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    iget-boolean v0, v0, Lorg/lasque/tusdk/core/seles/SelesContext;->s:Z

    return v0
.end method

.method public static isSupportRedTextures()Z
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    iget-boolean v0, v0, Lorg/lasque/tusdk/core/seles/SelesContext;->q:Z

    return v0
.end method

.method public static program(Ljava/lang/String;Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/core/seles/SelesContext;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object p0

    return-object p0
.end method

.method public static returnFramebufferToCache(Lorg/lasque/tusdk/core/seles/SelesFramebuffer;)V
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/lasque/tusdk/core/seles/SelesContext;->setReturnFramebufferToCache(Lorg/lasque/tusdk/core/seles/SelesFramebuffer;)V

    return-void
.end method

.method public static returnFramebufferToCache(Lorg/lasque/tusdk/core/seles/SelesFramebuffer;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/lasque/tusdk/core/seles/SelesContext;->setReturnFramebufferToCache(Lorg/lasque/tusdk/core/seles/SelesFramebuffer;Ljavax/microedition/khronos/egl/EGLContext;)V

    return-void
.end method

.method public static setActiveShaderProgram(Lorg/lasque/tusdk/core/seles/SelesGLProgram;)V
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/seles/SelesContext;->a(Lorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method public static shared()Lorg/lasque/tusdk/core/seles/SelesContext;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/seles/SelesContext;->a:Lorg/lasque/tusdk/core/seles/SelesContext;

    return-object v0
.end method

.method public static sharedFramebufferCache()Lorg/lasque/tusdk/core/seles/SelesFramebufferCache;
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesContext;->getFramebufferCache()Lorg/lasque/tusdk/core/seles/SelesFramebufferCache;

    move-result-object v0

    return-object v0
.end method

.method public static sizeThatFitsWithinATexture(Lorg/lasque/tusdk/core/struct/TuSdkSize;)Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->limitSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dumpGPU()V
    .locals 5

    const-string v0, "-------- GPU info --------"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "mSupportGL2: %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-boolean v4, p0, Lorg/lasque/tusdk/core/seles/SelesContext;->b:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "mSupportRedTextures: %s"

    new-array v3, v2, [Ljava/lang/Object;

    iget-boolean v4, p0, Lorg/lasque/tusdk/core/seles/SelesContext;->q:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "mSupportFrameBufferReads: %s"

    new-array v3, v2, [Ljava/lang/Object;

    iget-boolean v4, p0, Lorg/lasque/tusdk/core/seles/SelesContext;->r:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "mSupportOESImageExternal: %s"

    new-array v3, v2, [Ljava/lang/Object;

    iget-boolean v4, p0, Lorg/lasque/tusdk/core/seles/SelesContext;->s:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "mMaxTextureSize: %s"

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lorg/lasque/tusdk/core/seles/SelesContext;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "mMaxTextureOptimizedSize: %s"

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lorg/lasque/tusdk/core/seles/SelesContext;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "mMaxTextureImageUnits: %s"

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lorg/lasque/tusdk/core/seles/SelesContext;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "mMaxVertexAttribs: %s"

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lorg/lasque/tusdk/core/seles/SelesContext;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "mMaxVertexUniformVertors: %s"

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lorg/lasque/tusdk/core/seles/SelesContext;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "mMaxFragmentUniformVertors: %s"

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lorg/lasque/tusdk/core/seles/SelesContext;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "mMaxVertexTextureImageUnits: %s"

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lorg/lasque/tusdk/core/seles/SelesContext;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "mMaxVaryingVectors: %s"

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lorg/lasque/tusdk/core/seles/SelesContext;->j:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "mGpuInfo: %s"

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/lasque/tusdk/core/seles/SelesContext;->k:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "mCpuType: %s"

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/lasque/tusdk/core/seles/SelesContext;->l:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "mExtensionNames: %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/SelesContext;->m:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getCurrentEGLContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentGL()Ljavax/microedition/khronos/opengles/GL10;
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/SelesContext;->getCurrentEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFramebufferCache()Lorg/lasque/tusdk/core/seles/SelesFramebufferCache;
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/SelesContext;->getCurrentEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesContext;->o:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/seles/SelesFramebufferCache;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setReturnFramebufferToCache(Lorg/lasque/tusdk/core/seles/SelesFramebuffer;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/SelesContext;->getCurrentEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/core/seles/SelesContext;->setReturnFramebufferToCache(Lorg/lasque/tusdk/core/seles/SelesFramebuffer;Ljavax/microedition/khronos/egl/EGLContext;)V

    return-void
.end method

.method public setReturnFramebufferToCache(Lorg/lasque/tusdk/core/seles/SelesFramebuffer;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/SelesContext;->o:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->getThreadID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/lasque/tusdk/core/seles/SelesFramebufferCache;

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2, p1}, Lorg/lasque/tusdk/core/seles/SelesFramebufferCache;->returnFramebufferToCache(Lorg/lasque/tusdk/core/seles/SelesFramebuffer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public supportsOpenGLESExtension(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesContext;->m:Ljava/lang/String;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/StringHelper;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/StringHelper;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesContext;->m:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
