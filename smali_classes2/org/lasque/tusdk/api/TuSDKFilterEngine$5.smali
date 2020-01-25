.class Lorg/lasque/tusdk/api/TuSDKFilterEngine$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/api/TuSDKFilterEngine;->asyncProcessPictureData([BLorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:[Lorg/lasque/tusdk/core/face/FaceAligment;

.field final synthetic c:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

.field final synthetic d:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

.field final synthetic e:Lorg/lasque/tusdk/api/TuSDKFilterEngine;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/api/TuSDKFilterEngine;[B[Lorg/lasque/tusdk/core/face/FaceAligment;Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$5;->e:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    iput-object p2, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$5;->a:[B

    iput-object p3, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$5;->b:[Lorg/lasque/tusdk/core/face/FaceAligment;

    iput-object p4, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$5;->c:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    iput-object p5, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$5;->d:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$5;->e:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    iget-object v0, v0, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->clone()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->processImage()V

    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$5;->a:[B

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageDecode([BZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v2

    if-eqz v2, :cond_0

    instance-of v3, v2, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterStickerInterface;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$5;->e:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    invoke-static {v3}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->g(Lorg/lasque/tusdk/api/TuSDKFilterEngine;)Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterStickerInterface;

    iget-object v4, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$5;->e:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    invoke-static {v4}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->g(Lorg/lasque/tusdk/api/TuSDKFilterEngine;)Lorg/lasque/tusdk/core/sticker/LiveStickerManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->getStickers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterStickerInterface;->updateStickers(Ljava/util/List;)V

    :cond_0
    new-instance v3, Lorg/lasque/tusdk/api/TuSDKFilterEngine$5$1;

    invoke-direct {v3, p0, v1, v2, v0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine$5$1;-><init>(Lorg/lasque/tusdk/api/TuSDKFilterEngine$5;Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V

    invoke-static {v3}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->runThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    return-void
.end method
