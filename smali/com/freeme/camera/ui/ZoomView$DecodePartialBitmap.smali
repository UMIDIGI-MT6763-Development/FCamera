.class Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;
.super Landroid/os/AsyncTask;
.source "ZoomView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/ui/ZoomView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodePartialBitmap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/graphics/RectF;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field mDecoder:Landroid/graphics/BitmapRegionDecoder;

.field final synthetic this$0:Lcom/freeme/camera/ui/ZoomView;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/ui/ZoomView;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/freeme/camera/ui/ZoomView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/ui/ZoomView;Lcom/freeme/camera/ui/ZoomView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;-><init>(Lcom/freeme/camera/ui/ZoomView;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object v1, p0, Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/freeme/camera/ui/ZoomView;

    invoke-static {v1}, Lcom/freeme/camera/ui/ZoomView;->access$100(Lcom/freeme/camera/ui/ZoomView;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-static {v1}, Lcom/freeme/camera/data/LocalDataUtil;->decodeBitmapDimension(Ljava/io/InputStream;)Landroid/graphics/Point;

    move-result-object v3

    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-nez v3, :cond_1

    return-object v2

    :cond_1
    new-instance v1, Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/Point;->x:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    iget v5, v3, Landroid/graphics/Point;->y:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-direct {v1, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iget-object v5, p0, Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/freeme/camera/ui/ZoomView;

    invoke-static {v5}, Lcom/freeme/camera/ui/ZoomView;->access$200(Lcom/freeme/camera/ui/ZoomView;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5, v6, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    invoke-virtual {v4, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v5, v1, Landroid/graphics/RectF;->left:F

    neg-float v5, v5

    iget v7, v1, Landroid/graphics/RectF;->top:F

    neg-float v7, v7

    invoke-virtual {v4, v5, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance v5, Landroid/graphics/RectF;

    iget v7, v3, Landroid/graphics/Point;->x:I

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    iget v8, v3, Landroid/graphics/Point;->y:I

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    invoke-direct {v5, v6, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v4, v1, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget-object v7, p0, Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/freeme/camera/ui/ZoomView;

    invoke-static {v7}, Lcom/freeme/camera/ui/ZoomView;->access$300(Lcom/freeme/camera/ui/ZoomView;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    iget-object v8, p0, Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/freeme/camera/ui/ZoomView;

    invoke-static {v8}, Lcom/freeme/camera/ui/ZoomView;->access$400(Lcom/freeme/camera/ui/ZoomView;)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    invoke-virtual {v5, v6, v6, v7, v8}, Landroid/graphics/RectF;->intersect(FFFF)Z

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    sget-object v7, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v6, p1, v1, v7}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v6, p1, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {v5, v1, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    iget v1, v3, Landroid/graphics/Point;->x:I

    add-int/lit8 v1, v1, -0x1

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v0, v0, v1, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v2

    :cond_3
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget-object v3, p0, Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/freeme/camera/ui/ZoomView;

    invoke-static {v3}, Lcom/freeme/camera/ui/ZoomView;->access$200(Lcom/freeme/camera/ui/ZoomView;)I

    move-result v3

    add-int/lit16 v3, v3, 0x168

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/freeme/camera/ui/ZoomView;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/freeme/camera/ui/ZoomView;->access$500(Lcom/freeme/camera/ui/ZoomView;II)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/freeme/camera/ui/ZoomView;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/freeme/camera/ui/ZoomView;->access$500(Lcom/freeme/camera/ui/ZoomView;II)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :goto_0
    iget-object v3, p0, Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/freeme/camera/ui/ZoomView;

    invoke-static {v3}, Lcom/freeme/camera/ui/ZoomView;->access$100(Lcom/freeme/camera/ui/ZoomView;)Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_5

    return-object v2

    :cond_5
    :try_start_1
    invoke-static {v3, v0}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_6
    iget-object v0, p0, Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    if-nez v0, :cond_7

    return-object v2

    :cond_7
    invoke-virtual {v0, p1, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p0}, Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_8

    return-object v2

    :cond_8
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    iget-object p1, p0, Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/freeme/camera/ui/ZoomView;

    invoke-static {p1}, Lcom/freeme/camera/ui/ZoomView;->access$200(Lcom/freeme/camera/ui/ZoomView;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v8, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_9
    :goto_1
    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;->doInBackground([Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/freeme/camera/ui/ZoomView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/freeme/camera/ui/ZoomView;->access$602(Lcom/freeme/camera/ui/ZoomView;Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;)Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;

    iget-object v0, p0, Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    iget-object v1, p0, Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/freeme/camera/ui/ZoomView;

    invoke-static {v1}, Lcom/freeme/camera/ui/ZoomView;->access$000(Lcom/freeme/camera/ui/ZoomView;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/freeme/camera/ui/ZoomView;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/ui/ZoomView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/freeme/camera/ui/ZoomView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/freeme/camera/ui/ZoomView;->access$700(Lcom/freeme/camera/ui/ZoomView;Z)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;->this$0:Lcom/freeme/camera/ui/ZoomView;

    invoke-static {v0}, Lcom/freeme/camera/ui/ZoomView;->access$000(Lcom/freeme/camera/ui/ZoomView;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    return-void
.end method
