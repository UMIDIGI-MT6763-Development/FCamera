.class Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$LomoSurfaceTextureListener;
.super Ljava/lang/Object;
.source "MatrixDisplayViewManager.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LomoSurfaceTextureListener"
.end annotation


# instance fields
.field private mPosition:I

.field final synthetic this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$LomoSurfaceTextureListener;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$LomoSurfaceTextureListener;->mPosition:I

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfacetTextureAvailable(), surface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$LomoSurfaceTextureListener;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$LomoSurfaceTextureListener;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$1100(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)[Landroid/view/Surface;

    move-result-object v0

    iget v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$LomoSurfaceTextureListener;->mPosition:I

    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    aput-object v2, v0, v1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$LomoSurfaceTextureListener;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$2300(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$SurfaceAvailableListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$LomoSurfaceTextureListener;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$2300(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$SurfaceAvailableListener;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$LomoSurfaceTextureListener;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$1100(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)[Landroid/view/Surface;

    move-result-object v0

    iget v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$LomoSurfaceTextureListener;->mPosition:I

    aget-object v0, v0, v1

    invoke-interface {p1, v0, p2, p3, v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$SurfaceAvailableListener;->onSurfaceAvailable(Landroid/view/Surface;III)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureDestroyed(), surface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "and mPosition:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$LomoSurfaceTextureListener;->mPosition:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$LomoSurfaceTextureListener;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$1100(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)[Landroid/view/Surface;

    move-result-object p1

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$LomoSurfaceTextureListener;->mPosition:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
