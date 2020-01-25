.class Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$3;
.super Ljava/lang/Object;
.source "BeautyFaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->snapPreview(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

.field final synthetic val$isRevertMirror:Z


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$3;->this$0:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    iput-boolean p2, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$3;->val$isRevertMirror:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$3;->this$0:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->access$1000(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$3;->this$0:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->access$1100(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$3;->this$0:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->access$1100(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$3;->this$0:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->access$1100(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$3;->this$0:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    invoke-static {v3}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->access$1100(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$3;->this$0:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    invoke-static {v4}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->access$1100(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->createBitmapFromGLSurface(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-boolean v1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$3;->val$isRevertMirror:Z

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->bitmap2byteArrayTurbo(Landroid/graphics/Bitmap;I)[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreviewScreenShot bitmap:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$3;->this$0:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->access$600(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$DataBeautyHandleCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$3;->this$0:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->access$600(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$DataBeautyHandleCallback;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$DataBeautyHandleCallback;->onThumbCallback([B)V

    :cond_0
    return-void
.end method
