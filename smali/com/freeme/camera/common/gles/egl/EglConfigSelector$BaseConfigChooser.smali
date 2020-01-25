.class abstract Lcom/freeme/camera/common/gles/egl/EglConfigSelector$BaseConfigChooser;
.super Ljava/lang/Object;
.source "EglConfigSelector.java"

# interfaces
.implements Lcom/freeme/camera/common/gles/egl/EglConfigSelector$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/gles/egl/EglConfigSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseConfigChooser"
.end annotation


# instance fields
.field protected mConfigSpec:[I

.field final synthetic this$0:Lcom/freeme/camera/common/gles/egl/EglConfigSelector;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/common/gles/egl/EglConfigSelector;[I)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$BaseConfigChooser;->this$0:Lcom/freeme/camera/common/gles/egl/EglConfigSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$BaseConfigChooser;->mConfigSpec:[I

    return-void
.end method


# virtual methods
.method public chooseConfigEGL14(Landroid/opengl/EGLDisplay;Z)Landroid/opengl/EGLConfig;
    .locals 10

    const/16 v0, 0x64

    new-array v0, v0, [Landroid/opengl/EGLConfig;

    const/4 v1, 0x1

    new-array v9, v1, [I

    const/4 v2, 0x4

    const/4 v3, 0x5

    if-eqz p2, :cond_0

    iget-object v4, p0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$BaseConfigChooser;->mConfigSpec:[I

    array-length v5, v4

    add-int/lit8 v5, v5, -0x3

    const/16 v6, 0x3142

    aput v6, v4, v5

    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    aput v1, v4, v5

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, p0, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$BaseConfigChooser;->mConfigSpec:[I

    array-length v5, v4

    sub-int/2addr v5, v3

    const/16 v3, 0x3033

    aput v3, v4, v5

    array-length v3, v4

    sub-int/2addr v3, v2

    aput v1, v4, v3

    const/4 v3, 0x0

    const/4 v5, 0x0

    array-length v6, v0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, v4

    move-object v4, v0

    move-object v7, v9

    invoke-static/range {v1 .. v8}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    aget v1, v9, v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/freeme/camera/common/gles/egl/EglConfigSelector$BaseConfigChooser;->chooseConfigEGL14(Landroid/opengl/EGLDisplay;[Landroid/opengl/EGLConfig;IZ)Landroid/opengl/EGLConfig;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No config chosen"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unable to find ES2 EGL config in EGL14"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method abstract chooseConfigEGL14(Landroid/opengl/EGLDisplay;[Landroid/opengl/EGLConfig;IZ)Landroid/opengl/EGLConfig;
.end method
