.class Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->a(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/seles/SelesParameters;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;

.field final synthetic b:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

.field final synthetic c:Landroid/graphics/Bitmap;

.field final synthetic d:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

.field final synthetic e:F

.field final synthetic f:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;F)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$3;->f:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;

    iput-object p2, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$3;->a:Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;

    iput-object p3, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$3;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    iput-object p4, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$3;->c:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$3;->d:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    iput p6, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$3;->e:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$3;->f:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;

    invoke-static {v0}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->f(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$3;->f:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;

    invoke-static {v1}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->f(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$3;->a:Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/face/FaceAligment;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/face/FaceAligment;-><init>()V

    iget-object v1, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$3;->f:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;

    invoke-static {v1}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->g(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;)[Landroid/graphics/PointF;

    move-result-object v1

    iput-object v1, v0, Lorg/lasque/tusdk/core/face/FaceAligment;->marks:[Landroid/graphics/PointF;

    iget-object v1, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$3;->a:Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/lasque/tusdk/core/face/FaceAligment;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->updateFaceFeatures([Lorg/lasque/tusdk/core/face/FaceAligment;F)V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$3;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    iget-object v1, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$3;->c:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$3;->d:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    iget v3, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$3;->e:F

    invoke-virtual {v0, v1, v2, v3}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->process(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$3;->f:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;

    invoke-static {v1}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->h(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;)Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$SkinFilterManagerDelegate;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$3;->f:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;

    invoke-static {v1}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->h(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;)Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$SkinFilterManagerDelegate;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$SkinFilterManagerDelegate;->onGetSkinFilterResult(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
