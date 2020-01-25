.class public Lorg/lasque/tusdk/core/secret/StickerAdapter$StickerGroupThumbTaskImageWare;
.super Lorg/lasque/tusdk/core/task/ImageViewTaskWare;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/secret/StickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StickerGroupThumbTaskImageWare"
.end annotation


# instance fields
.field public data:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/task/ImageViewTaskWare;-><init>()V

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/secret/StickerAdapter$StickerGroupThumbTaskImageWare;->setImageView(Landroid/widget/ImageView;)V

    iput-object p2, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter$StickerGroupThumbTaskImageWare;->data:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/secret/StickerAdapter$StickerGroupThumbTaskImageWare;->setImageCompress(I)V

    return-void
.end method
