.class public Lorg/lasque/tusdk/core/secret/StickerAdapter$StickerThumbTaskImageWare;
.super Lorg/lasque/tusdk/core/task/ImageViewTaskWare;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/secret/StickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StickerThumbTaskImageWare"
.end annotation


# instance fields
.field public data:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/task/ImageViewTaskWare;-><init>()V

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/secret/StickerAdapter$StickerThumbTaskImageWare;->setImageView(Landroid/widget/ImageView;)V

    iput-object p2, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter$StickerThumbTaskImageWare;->data:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    return-void
.end method
