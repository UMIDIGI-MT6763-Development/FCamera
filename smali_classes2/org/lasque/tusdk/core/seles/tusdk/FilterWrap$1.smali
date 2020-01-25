.class Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->process(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;F)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

.field final synthetic c:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap$TempResult;

.field final synthetic d:F

.field final synthetic e:Ljava/util/concurrent/Semaphore;

.field final synthetic f:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap$TempResult;FLjava/util/concurrent/Semaphore;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap$1;->f:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap$1;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap$1;->b:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    iput-object p4, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap$1;->c:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap$TempResult;

    iput p5, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap$1;->d:F

    iput-object p6, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap$1;->e:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap$1;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap$1;->b:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageRotaing(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap$1;->c:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap$TempResult;

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap$1;->f:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-static {v2, v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->a(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap$TempResult;->a(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap$TempResult;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap$1;->c:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap$TempResult;

    invoke-static {v2}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap$TempResult;->a(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap$TempResult;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap$1;->f:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->clone()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v2

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap$1;->c:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap$TempResult;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageScale(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->a(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v3, v2}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap$TempResult;->a(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap$TempResult;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap$1;->d:F

    sub-float/2addr v1, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap$1;->e:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
