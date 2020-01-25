.class public abstract Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;
.super Lorg/lasque/tusdk/core/seles/sources/SelesOutput;

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field static final synthetic a:Z

.field private static final b:[F

.field private static final c:[F


# instance fields
.field private A:Landroid/graphics/SurfaceTexture;

.field private B:Z

.field private C:Lorg/lasque/tusdk/core/utils/TuSdkDate;

.field private D:J

.field private E:J

.field private F:Z

.field private G:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraEngine;

.field private H:Landroid/hardware/Camera;

.field private I:Z

.field private d:Ljava/nio/FloatBuffer;

.field private e:Ljava/nio/FloatBuffer;

.field private f:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Landroid/content/Context;

.field protected mOutputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

.field private n:Ljavax/microedition/khronos/egl/EGLContext;

.field private o:Z

.field private p:Z

.field private q:Ljava/nio/IntBuffer;

.field private r:I

.field private final s:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private u:Z

.field private v:Z

.field private w:J

.field private x:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->a:Z

    const/16 v0, 0x8

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->b:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->c:[F

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;-><init>()V

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->Portrait:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->x:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->I:Z

    const-string v1, "Used Camera 1 Api"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->m:Landroid/content/Context;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->s:Ljava/util/Queue;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->t:Ljava/util/Queue;

    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->mOutputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    sget-object p1, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->Portrait:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->setOutputImageOrientation(Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-le p1, v1, :cond_0

    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->isSupportOESImageExternal()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->k:Z

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->a()V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->m()V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;I)I
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->g:I

    return p1
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->A:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->f:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    return-object p0
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;Lorg/lasque/tusdk/core/seles/SelesGLProgram;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->f:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    return-object p1
.end method

.method private a()V
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->k:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->f:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->b:[F

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->buildBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->d:Ljava/nio/FloatBuffer;

    sget-object v0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->c:[F

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->buildBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->e:Ljava/nio/FloatBuffer;

    new-instance v0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$1;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$1;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->runOnDraw(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Ljava/util/Queue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    monitor-enter p1

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->a([B)V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/utils/TuSdkDate;)V
    .locals 6

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->F:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->E:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->E:J

    iget-wide v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->E:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->diffOfMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->D:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->D:J

    const-string p1, "Average frame time: %s ms"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->averageFrameDurationDuringCapture()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1, v3}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "Current frame time: %s ms"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {p1, v2}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a([B)V
    .locals 10

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->q:Ljava/nio/IntBuffer;

    invoke-virtual {v2}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->YUVtoRBGA([BII[I)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->k()V

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->getTexture()I

    move-result p1

    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v5, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v6, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iget-object v9, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->q:Ljava/nio/IntBuffer;

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/4 p1, 0x0

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->v:Z

    return p1
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)I
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->g:I

    return p0
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;I)I
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->h:I

    return p1
.end method

.method private b()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->A:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->B:Z

    return p1
.end method

.method static synthetic c(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)I
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->h:I

    return p0
.end method

.method static synthetic c(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;I)I
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->i:I

    return p1
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->A:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->B:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    :cond_0
    return-void
.end method

.method static synthetic d(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;I)I
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->j:I

    return p1
.end method

.method private d()V
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->G:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraEngine;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraEngine;->onInitCamera()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->H:Landroid/hardware/Camera;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->H:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->G:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraEngine;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraEngine;->previewOptimalSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    :cond_1
    const-string v0, "mInputTextureSize: %s"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->u:Z

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->k:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->l:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->H:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v1

    mul-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x8

    iput v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->r:I

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->q:Ljava/nio/IntBuffer;

    :cond_3
    new-instance v0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$3;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$3;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic d(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->k:Z

    return p0
.end method

.method static synthetic e(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)I
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->g()I

    move-result p0

    return p0
.end method

.method private e()Lorg/lasque/tusdk/core/seles/SelesFramebuffer;
    .locals 14

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->f()V

    :cond_0
    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->sharedFramebufferCache()Lorg/lasque/tusdk/core/seles/SelesFramebufferCache;

    move-result-object v0

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {v0, v2, v1}, Lorg/lasque/tusdk/core/seles/SelesFramebufferCache;->fetchFramebuffer(Lorg/lasque/tusdk/core/struct/TuSdkSize;Z)Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->disableReferenceCounting()V

    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->shared()Lorg/lasque/tusdk/core/seles/SelesContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/SelesContext;->getCurrentEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->n:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0

    :cond_1
    const/4 v0, 0x1

    new-array v2, v0, [I

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v2, v1

    const/16 v3, 0xde1

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2800

    const v4, 0x46180400    # 9729.0f

    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2801

    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    const v4, 0x47012f00    # 33071.0f

    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2803

    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v5, 0xde1

    const/4 v6, 0x0

    const/16 v7, 0x1908

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v8, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v9, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    const/4 v10, 0x0

    const/16 v11, 0x1908

    const/16 v12, 0x1401

    const/4 v13, 0x0

    invoke-static/range {v5 .. v13}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    new-instance v0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    aget v1, v2, v1

    invoke-direct {v0, v3, v1}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;-><init>(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V

    return-object v0
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->clearAllLocks()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->n:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesContext;->returnFramebufferToCache(Lorg/lasque/tusdk/core/seles/SelesFramebuffer;Ljavax/microedition/khronos/egl/EGLContext;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    :cond_0
    return-void
.end method

.method static synthetic f(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->l:Z

    return p0
.end method

.method private g()I
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v1, v2

    const v3, 0x8d65

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2601

    const/16 v4, 0x2801

    invoke-static {v3, v4, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v4, 0x2800

    invoke-static {v3, v4, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const v0, 0x812f

    const/16 v4, 0x2802

    invoke-static {v3, v4, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v4, 0x2803

    invoke-static {v3, v4, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    aget v0, v1, v2

    iput v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->j:I

    iget v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->j:I

    return v0
.end method

.method static synthetic g(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->i()V

    return-void
.end method

.method static synthetic h(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)Landroid/hardware/Camera;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->H:Landroid/hardware/Camera;

    return-object p0
.end method

.method private h()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->H:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->onPreviewStarted()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "startPreview"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method static synthetic i(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)I
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->j:I

    return p0
.end method

.method private i()V
    .locals 2

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->l:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->H:Landroid/hardware/Camera;

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->r:I

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->H:Landroid/hardware/Camera;

    iget v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->r:I

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    return-void
.end method

.method static synthetic j(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)Landroid/graphics/SurfaceTexture;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->A:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method private j()Z
    .locals 5

    iget-wide v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->w:J

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->w:J

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic k(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraEngine;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->G:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraEngine;

    return-object p0
.end method

.method private k()V
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->v:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->e()Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->v:Z

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->activateFramebuffer()V

    return-void
.end method

.method private l()V
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->p:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->p:Z

    invoke-static {}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->create()Lorg/lasque/tusdk/core/utils/TuSdkDate;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->C:Lorg/lasque/tusdk/core/utils/TuSdkDate;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->onCameraStarted()V

    return-void
.end method

.method static synthetic l(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->h()V

    return-void
.end method

.method private m()V
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->u:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->u:Z

    new-instance v0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$7;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$7;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic m(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->c()V

    return-void
.end method


# virtual methods
.method public addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->mOutputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-interface {p1, v0, p2}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->setInputRotation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;I)V

    :cond_0
    return-void
.end method

.method public averageFrameDurationDuringCapture()F
    .locals 5

    iget-wide v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->D:J

    long-to-float v0, v0

    iget-wide v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->E:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    long-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->m:Landroid/content/Context;

    return-object v0
.end method

.method protected getEnableFixedFramerate()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->I:Z

    return v0
.end method

.method public getOutputImageOrientation()Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->x:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    return-object v0
.end method

.method public getRunBenchmark()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->F:Z

    return v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->A:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public hasCreateSurface()Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->A:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public inputCamera()Landroid/hardware/Camera;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->H:Landroid/hardware/Camera;

    return-object v0
.end method

.method public isCapturePaused()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->o:Z

    return v0
.end method

.method public isCapturing()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->p:Z

    return v0
.end method

.method public isHorizontallyMirrorFrontFacingCamera()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->y:Z

    return v0
.end method

.method public isHorizontallyMirrorRearFacingCamera()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->z:Z

    return v0
.end method

.method protected isOnDrawTasksEmpty()Z
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->s:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->s:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onCameraStarted()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->G:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraEngine;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraEngine;->onCameraStarted()V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->stopCameraCapture()V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->f()V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    const/16 p1, 0x4100

    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->isOnDrawTasksEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->F:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->p:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->create()Lorg/lasque/tusdk/core/utils/TuSdkDate;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->runPendingOnDrawTasks()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->updateTargetsForVideoCameraUsingCacheTexture()V

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->o:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->getEnableFixedFramerate()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->c()V

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->runPendingOnDrawEndTasks()V

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->a(Lorg/lasque/tusdk/core/utils/TuSdkDate;)V

    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iget-boolean p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->k:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->l()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->getEnableFixedFramerate()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->isOnDrawTasksEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->o:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->j()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    return-void

    :cond_2
    iget-boolean p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->o:Z

    if-nez p1, :cond_4

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->j()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->m()V

    new-instance p1, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$6;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$6;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)V

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->runOnDraw(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->getEnableFixedFramerate()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->updateCameraView()V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onMainThreadStart()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->G:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraEngine;

    if-nez v0, :cond_0

    const-string v0, "You need setCameraEngine(SelesVideoCameraEngine engine)"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->stopCameraCapture()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->G:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraEngine;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraEngine;->canInitCamera()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->d()V

    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->o:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->k:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->l:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->j()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->processFrameData([B)V

    :cond_1
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    return-void

    :cond_2
    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->l()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->isOnDrawTasksEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->m()V

    new-instance v0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$5;

    invoke-direct {v0, p0, p1, p2}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$5;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;[BLandroid/hardware/Camera;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->runOnDraw(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    :goto_0
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    return-void
.end method

.method protected onPreviewStarted()V
    .locals 0

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    const/4 p1, 0x0

    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    const/16 p1, 0xb71

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisable(I)V

    return-void
.end method

.method public pauseCameraCapture()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->o:Z

    return-void
.end method

.method protected processFrameData([B)V
    .locals 0

    return-void
.end method

.method protected processVideoSampleBufferOES()V
    .locals 15
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->f:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/SelesContext;->setActiveShaderProgram(Lorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->k()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    const v0, 0x84c2

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->j:I

    const v1, 0x8d65

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->i:I

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v3, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->g:I

    iget-object v8, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->d:Ljava/nio/FloatBuffer;

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v9, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->h:I

    iget-object v14, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->e:Ljava/nio/FloatBuffer;

    const/4 v10, 0x2

    const/16 v11, 0x1406

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v9 .. v14}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v0, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x4

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public resetBenchmarkAverage()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->E:J

    iput-wide v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->D:J

    return-void
.end method

.method public resumeCameraCapture()V
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->o:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->h()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->o:Z

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->i()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->A:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$4;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$4;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->runOnDraw(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method protected runOnDraw(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->s:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->s:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected runOnDrawEnd(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->t:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->t:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected runPendingOnDrawEndTasks()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->t:Ljava/util/Queue;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->a(Ljava/util/Queue;)V

    return-void
.end method

.method protected runPendingOnDrawTasks()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->s:Ljava/util/Queue;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->a(Ljava/util/Queue;)V

    return-void
.end method

.method public setCameraEngine(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraEngine;)V
    .locals 1

    sget-boolean v0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->a:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->G:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraEngine;

    return-void
.end method

.method public setHorizontallyMirrorFrontFacingCamera(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->y:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->u:Z

    return-void
.end method

.method public setHorizontallyMirrorRearFacingCamera(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->z:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->u:Z

    return-void
.end method

.method public setOutputImageOrientation(Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->x:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->u:Z

    return-void
.end method

.method public setRunBenchmark(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->F:Z

    return-void
.end method

.method public startCameraCapture()V
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->onMainThreadStart()V

    return-void

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$2;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$2;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)V

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected startPreviewCallback()V
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->l:Z

    return-void
.end method

.method public stopCameraCapture()V
    .locals 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->p:Z

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->o:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->w:J

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->B:Z

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->A:Landroid/graphics/SurfaceTexture;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v1, v3, :cond_0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->b()V

    :cond_0
    iput-object v2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->A:Landroid/graphics/SurfaceTexture;

    :cond_1
    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->H:Landroid/hardware/Camera;

    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->H:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->cancelAutoFocus()V

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->H:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->H:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v3, "SelesVideoCamera stopCameraCapture"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-object v2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->H:Landroid/hardware/Camera;

    goto :goto_2

    :goto_1
    iput-object v2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->H:Landroid/hardware/Camera;

    throw v0

    :cond_2
    :goto_2
    iget-boolean v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->F:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->C:Lorg/lasque/tusdk/core/utils/TuSdkDate;

    if-eqz v1, :cond_3

    const-string v2, "Capture frame time: %s ms"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->diffOfMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v4}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "Average frame time: %s ms"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->averageFrameDurationDuringCapture()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->resetBenchmarkAverage()V

    return-void
.end method

.method protected stopPreviewCallback()V
    .locals 2

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->l:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->H:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->q:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    iput-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->q:Ljava/nio/IntBuffer;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->l:Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected updateCameraView()V
    .locals 0

    return-void
.end method

.method protected updateTargetsForVideoCameraUsingCacheTexture()V
    .locals 6

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->mTargets:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    invoke-interface {v3}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->mTargetTextureIndices:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->mOutputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-interface {v3, v5, v4}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->setInputRotation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;I)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->getTargetToIgnoreForUpdates()Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    move-result-object v5

    if-eq v3, v5, :cond_1

    iget-object v5, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-interface {v3, v5, v4}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->setInputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V

    invoke-interface {v3}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->wantsMonochromeInput()Z

    move-result v5

    invoke-interface {v3, v5}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->setCurrentlyReceivingMonochromeInput(Z)V

    :cond_1
    iget-object v5, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-interface {v3, v5, v4}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->setInputFramebuffer(Lorg/lasque/tusdk/core/seles/SelesFramebuffer;I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_5

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->mTargets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    invoke-interface {v2}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->getTargetToIgnoreForUpdates()Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    move-result-object v3

    if-ne v2, v3, :cond_3

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->mTargetTextureIndices:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-wide/16 v4, 0x0

    invoke-interface {v2, v4, v5, v3}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->newFrameReady(JI)V

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method
