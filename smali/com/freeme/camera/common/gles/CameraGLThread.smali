.class public Lcom/freeme/camera/common/gles/CameraGLThread;
.super Ljava/lang/Object;
.source "CameraGLThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/gles/CameraGLThread$Renderer;
    }
.end annotation


# static fields
.field public static final RENDER_MODE_BLIT_FRAMEBUFFER:I = 0x2

.field public static final RENDER_MODE_DRAW_TWICE:I = 0x0

.field public static final RENDER_MODE_FBO:I = 0x1


# instance fields
.field private mRenderMode:I

.field private mRenderer:Lcom/freeme/camera/common/gles/CameraGLThread$Renderer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/common/gles/CameraGLThread;->mRenderMode:I

    return-void
.end method


# virtual methods
.method public requestRender()V
    .locals 0

    return-void
.end method

.method public setRenderMode(I)V
    .locals 0

    iput p1, p0, Lcom/freeme/camera/common/gles/CameraGLThread;->mRenderMode:I

    return-void
.end method

.method public setRenderer(Lcom/freeme/camera/common/gles/CameraGLThread$Renderer;)V
    .locals 0
    .param p1    # Lcom/freeme/camera/common/gles/CameraGLThread$Renderer;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/freeme/camera/common/gles/CameraGLThread;->mRenderer:Lcom/freeme/camera/common/gles/CameraGLThread$Renderer;

    return-void
.end method
