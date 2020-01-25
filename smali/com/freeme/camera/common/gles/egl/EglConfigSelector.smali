.class public Lcom/freeme/camera/common/gles/egl/EglConfigSelector;
.super Ljava/lang/Object;
.source "EglConfigSelector.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/gles/egl/EglConfigSelector$SimpleEGLConfigChooser;,
        Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;,
        Lcom/freeme/camera/common/gles/egl/EglConfigSelector$BaseConfigChooser;,
        Lcom/freeme/camera/common/gles/egl/EglConfigSelector$EglConfigFormat;,
        Lcom/freeme/camera/common/gles/egl/EglConfigSelector$EGLConfigChooser;
    }
.end annotation


# static fields
.field private static final EGL_OPENGL_ES2_BIT:I = 0x4

.field private static final EGL_RECORDABLE_ANDROID:I = 0x3142

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mEGLConfigChooser:Lcom/freeme/camera/common/gles/egl/EglConfigSelector$EGLConfigChooser;

.field private mSelectedPixelFormat:I

.field private mSupportedOutputFormats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/common/gles/egl/EglConfigSelector;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector;->mSelectedPixelFormat:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector;->mSupportedOutputFormats:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/freeme/camera/common/gles/egl/EglConfigSelector;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector;->mSupportedOutputFormats:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/common/gles/egl/EglConfigSelector;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/gles/egl/EglConfigSelector;->isInSupportedFormats(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/common/gles/egl/EglConfigSelector;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector;->mSelectedPixelFormat:I

    return p0
.end method

.method static synthetic access$302(Lcom/freeme/camera/common/gles/egl/EglConfigSelector;I)I
    .locals 0

    iput p1, p0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector;->mSelectedPixelFormat:I

    return p1
.end method

.method private isInSupportedFormats(I)Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector;->mSupportedOutputFormats:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public chooseConfigEGL14(Landroid/opengl/EGLDisplay;Z)Landroid/opengl/EGLConfig;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector;->mEGLConfigChooser:Lcom/freeme/camera/common/gles/egl/EglConfigSelector$EGLConfigChooser;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$SimpleEGLConfigChooser;

    invoke-direct {v0, p0}, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$SimpleEGLConfigChooser;-><init>(Lcom/freeme/camera/common/gles/egl/EglConfigSelector;)V

    iput-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector;->mEGLConfigChooser:Lcom/freeme/camera/common/gles/egl/EglConfigSelector$EGLConfigChooser;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector;->mSupportedOutputFormats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector;->mSupportedOutputFormats:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector;->mEGLConfigChooser:Lcom/freeme/camera/common/gles/egl/EglConfigSelector$EGLConfigChooser;

    invoke-interface {v0, p1, p2}, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$EGLConfigChooser;->chooseConfigEGL14(Landroid/opengl/EGLDisplay;Z)Landroid/opengl/EGLConfig;

    move-result-object p1

    return-object p1
.end method

.method public getSelectedPixelFormat()I
    .locals 1

    iget v0, p0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector;->mSelectedPixelFormat:I

    return v0
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 9

    new-instance v8, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$ComponentSizeChooser;-><init>(Lcom/freeme/camera/common/gles/egl/EglConfigSelector;IIIIII)V

    invoke-virtual {p0, v8}, Lcom/freeme/camera/common/gles/egl/EglConfigSelector;->setEGLConfigChooser(Lcom/freeme/camera/common/gles/egl/EglConfigSelector$EGLConfigChooser;)V

    return-void
.end method

.method public setEGLConfigChooser(Lcom/freeme/camera/common/gles/egl/EglConfigSelector$EGLConfigChooser;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector;->mEGLConfigChooser:Lcom/freeme/camera/common/gles/egl/EglConfigSelector$EGLConfigChooser;

    return-void
.end method

.method public setSupportedFormats([I)V
    .locals 4

    sget-object v0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setSupportedFormats] setSupportedFormats,format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    iget-object v3, p0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector;->mSupportedOutputFormats:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
