.class Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->appendSticker(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

.field final synthetic b:Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView$1;->b:Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;

    iput-object p2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView$1;->a:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView$1;->b:Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView$1;->a:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->a(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)V

    return-void
.end method
