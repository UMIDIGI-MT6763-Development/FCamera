.class Lorg/lasque/tusdk/modules/components/sticker/TuEditStickerFragmentBase$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/modules/components/sticker/TuEditStickerFragmentBase;->handleCompleteButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/TuSdkResult;

.field final synthetic b:Lorg/lasque/tusdk/modules/components/sticker/TuEditStickerFragmentBase;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/modules/components/sticker/TuEditStickerFragmentBase;Lorg/lasque/tusdk/core/TuSdkResult;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/sticker/TuEditStickerFragmentBase$1;->b:Lorg/lasque/tusdk/modules/components/sticker/TuEditStickerFragmentBase;

    iput-object p2, p0, Lorg/lasque/tusdk/modules/components/sticker/TuEditStickerFragmentBase$1;->a:Lorg/lasque/tusdk/core/TuSdkResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/sticker/TuEditStickerFragmentBase$1;->b:Lorg/lasque/tusdk/modules/components/sticker/TuEditStickerFragmentBase;

    iget-object v1, p0, Lorg/lasque/tusdk/modules/components/sticker/TuEditStickerFragmentBase$1;->a:Lorg/lasque/tusdk/core/TuSdkResult;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/modules/components/sticker/TuEditStickerFragmentBase;->asyncEditWithResult(Lorg/lasque/tusdk/core/TuSdkResult;)V

    return-void
.end method
