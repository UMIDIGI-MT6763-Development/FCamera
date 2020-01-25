.class Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage$2;->b:Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage$2;->b:Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->a(Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage$2;->b:Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->a(Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage$2;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->shared()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage$2;->b:Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;

    invoke-static {v1}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->a(Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    move-result-object v1

    iget-wide v1, v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->groupId:J

    invoke-virtual {v0, v1, v2}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->getStickerGroup(J)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdk;->getAppTempPath()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->file:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v0, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->file:Ljava/lang/String;

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage$2;->b:Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->a(Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    move-result-object v0

    iget-wide v2, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->stickerId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->shared()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage$2;->b:Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;

    invoke-static {v1}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->a(Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    move-result-object v1

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->loadSmartStickerItem(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage$2;->b:Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;

    new-instance v2, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage$2$1;

    invoke-direct {v2, p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage$2$1;-><init>(Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage$2;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->runOnGLContext(Ljava/lang/Runnable;)V

    return-void
.end method
