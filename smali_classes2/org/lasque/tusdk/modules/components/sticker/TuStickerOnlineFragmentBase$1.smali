.class Lorg/lasque/tusdk/modules/components/sticker/TuStickerOnlineFragmentBase$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage$StickerPackageDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/modules/components/sticker/TuStickerOnlineFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/modules/components/sticker/TuStickerOnlineFragmentBase;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/modules/components/sticker/TuStickerOnlineFragmentBase;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/sticker/TuStickerOnlineFragmentBase$1;->a:Lorg/lasque/tusdk/modules/components/sticker/TuStickerOnlineFragmentBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStickerPackageStatusChanged(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V
    .locals 0

    iget-object p1, p0, Lorg/lasque/tusdk/modules/components/sticker/TuStickerOnlineFragmentBase$1;->a:Lorg/lasque/tusdk/modules/components/sticker/TuStickerOnlineFragmentBase;

    invoke-static {p1, p2}, Lorg/lasque/tusdk/modules/components/sticker/TuStickerOnlineFragmentBase;->a(Lorg/lasque/tusdk/modules/components/sticker/TuStickerOnlineFragmentBase;Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;)V

    return-void
.end method
