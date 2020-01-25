.class Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->setSticker(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView$2;->a:Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView$2;->a:Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;

    const/4 v1, 0x1

    invoke-virtual {v0, v0, v1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->showViewIn(Landroid/view/View;Z)V

    return-void
.end method
