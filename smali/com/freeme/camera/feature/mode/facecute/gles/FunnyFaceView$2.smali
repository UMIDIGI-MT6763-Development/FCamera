.class Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$2;
.super Ljava/lang/Object;
.source "FunnyFaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->handleRGB565Data()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

.field final synthetic val$data:[I


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;[I)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$2;->val$data:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->access$500(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;)I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->access$600(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->access$500(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;)I

    move-result v1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->access$600(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;)I

    move-result v2

    mul-int/2addr v1, v2

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$2;->val$data:[I

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->access$500(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;)I

    move-result v2

    sub-int v5, v1, v2

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->access$500(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;)I

    move-result v2

    neg-int v6, v2

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->access$500(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;)I

    move-result v9

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->access$600(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;)I

    move-result v10

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v0

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    new-array v2, v1, [S

    invoke-static {v2}, Ljava/nio/ShortBuffer;->wrap([S)Ljava/nio/ShortBuffer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-short v5, v2, v4

    and-int/lit8 v6, v5, 0x1f

    shl-int/lit8 v6, v6, 0xb

    and-int/lit16 v7, v5, 0x7e0

    or-int/2addr v6, v7

    const v7, 0xf800

    and-int/2addr v5, v7

    shr-int/lit8 v5, v5, 0xb

    or-int/2addr v5, v6

    int-to-short v5, v5

    aput-short v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->access$600(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->access$500(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->access$500(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    invoke-static {v3}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->access$600(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->access$500(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;)I

    move-result v6

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->access$600(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;)I

    move-result v7

    const/4 v9, 0x1

    move-object v3, v0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->access$700(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;)Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$FunnyPictureCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->access$700(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;)Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$FunnyPictureCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->access$500(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;)I

    move-result v2

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    invoke-static {v3}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->access$600(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;)I

    move-result v3

    invoke-interface {v1, v0, v2, v3}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$FunnyPictureCallback;->onFunnyPictureTaken([BII)V

    :cond_1
    return-void
.end method
