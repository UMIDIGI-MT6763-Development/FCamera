.class Lcom/freeme/camera/ui/preview/TextureViewController$SurfaceChangeCallback;
.super Ljava/lang/Object;
.source "TextureViewController.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/ui/preview/TextureViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceChangeCallback"
.end annotation


# instance fields
.field private mListener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

.field final synthetic this$0:Lcom/freeme/camera/ui/preview/TextureViewController;


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/preview/TextureViewController;Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/preview/TextureViewController$SurfaceChangeCallback;->this$0:Lcom/freeme/camera/ui/preview/TextureViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/freeme/camera/ui/preview/TextureViewController$SurfaceChangeCallback;->mListener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

    return-void
.end method


# virtual methods
.method getBindStatusListener()Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/TextureViewController$SurfaceChangeCallback;->mListener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

    return-object v0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/TextureViewController$SurfaceChangeCallback;->this$0:Lcom/freeme/camera/ui/preview/TextureViewController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/freeme/camera/ui/preview/TextureViewController;->access$002(Lcom/freeme/camera/ui/preview/TextureViewController;Z)Z

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/TextureViewController$SurfaceChangeCallback;->this$0:Lcom/freeme/camera/ui/preview/TextureViewController;

    invoke-static {v0}, Lcom/freeme/camera/ui/preview/TextureViewController;->access$100(Lcom/freeme/camera/ui/preview/TextureViewController;)I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/ui/preview/TextureViewController$SurfaceChangeCallback;->this$0:Lcom/freeme/camera/ui/preview/TextureViewController;

    invoke-static {v1}, Lcom/freeme/camera/ui/preview/TextureViewController;->access$200(Lcom/freeme/camera/ui/preview/TextureViewController;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/TextureViewController$SurfaceChangeCallback;->mListener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/ui/preview/TextureViewController$SurfaceChangeCallback;->this$0:Lcom/freeme/camera/ui/preview/TextureViewController;

    invoke-static {v1}, Lcom/freeme/camera/ui/preview/TextureViewController;->access$100(Lcom/freeme/camera/ui/preview/TextureViewController;)I

    move-result v1

    iget-object v2, p0, Lcom/freeme/camera/ui/preview/TextureViewController$SurfaceChangeCallback;->this$0:Lcom/freeme/camera/ui/preview/TextureViewController;

    invoke-static {v2}, Lcom/freeme/camera/ui/preview/TextureViewController;->access$200(Lcom/freeme/camera/ui/preview/TextureViewController;)I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;->surfaceChanged(Ljava/lang/Object;II)V

    :cond_0
    invoke-static {}, Lcom/freeme/camera/ui/preview/TextureViewController;->access$300()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureAvailable surface  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " width "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " height "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/TextureViewController$SurfaceChangeCallback;->this$0:Lcom/freeme/camera/ui/preview/TextureViewController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/freeme/camera/ui/preview/TextureViewController;->access$002(Lcom/freeme/camera/ui/preview/TextureViewController;Z)Z

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/TextureViewController$SurfaceChangeCallback;->mListener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/ui/preview/TextureViewController$SurfaceChangeCallback;->this$0:Lcom/freeme/camera/ui/preview/TextureViewController;

    invoke-static {v1}, Lcom/freeme/camera/ui/preview/TextureViewController;->access$100(Lcom/freeme/camera/ui/preview/TextureViewController;)I

    move-result v1

    iget-object v2, p0, Lcom/freeme/camera/ui/preview/TextureViewController$SurfaceChangeCallback;->this$0:Lcom/freeme/camera/ui/preview/TextureViewController;

    invoke-static {v2}, Lcom/freeme/camera/ui/preview/TextureViewController;->access$200(Lcom/freeme/camera/ui/preview/TextureViewController;)I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;->surfaceDestroyed(Ljava/lang/Object;II)V

    :cond_0
    invoke-static {}, Lcom/freeme/camera/ui/preview/TextureViewController;->access$300()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureDestroyed surface  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/TextureViewController$SurfaceChangeCallback;->mListener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;->surfaceChanged(Ljava/lang/Object;II)V

    :cond_0
    invoke-static {}, Lcom/freeme/camera/ui/preview/TextureViewController;->access$300()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureSizeChanged surface  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " width "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " height "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/TextureViewController$SurfaceChangeCallback;->mListener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method
