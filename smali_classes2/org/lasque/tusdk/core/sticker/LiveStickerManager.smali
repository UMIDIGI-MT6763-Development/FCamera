.class public Lorg/lasque/tusdk/core/sticker/LiveStickerManager;
.super Ljava/lang/Object;


# static fields
.field public static final LIVE_STICKER_MAX_NUM:I = 0x5


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->a:Ljava/util/List;

    return-void
.end method

.method private a()Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->b:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_3

    iget-object v3, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->isActived()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;

    return-object v0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v1
.end method

.method private a(Z)V
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->setEnableAutoplayMode(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private a(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)Z
    .locals 2

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->removeAllStickers()V

    iput-boolean v1, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->d:Z

    :cond_0
    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->b(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->a()Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;-><init>()V

    :cond_2
    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->updateSticker(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method private b(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private c(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;
    .locals 4

    iget-object p1, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->a:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    iget-object v1, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge p1, v1, :cond_2

    iget-object v2, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;

    invoke-virtual {v2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->removeAllStickers()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->b:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->b:Ljava/util/List;

    :cond_0
    iput-object v1, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->a:Ljava/util/List;

    iput-object v1, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->c:Ljava/util/List;

    return-void
.end method

.method public getCurrentGroupId()J
    .locals 2

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    iget-wide v0, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->groupId:J

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getStickers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->a:Ljava/util/List;

    return-object v0
.end method

.method public isGroupStickerUsed(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)Z
    .locals 6

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    iget-wide v2, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->groupId:J

    iget-wide v4, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->groupId:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public pauseAllStickers()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->a(Z)V

    return-void
.end method

.method public removeAllStickers()V
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->reset()V

    iget-object v4, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-boolean v1, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->d:Z

    :cond_2
    :goto_1
    return-void
.end method

.method public removeSticker(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)V
    .locals 1

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->b(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->c(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->removeSticker()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public resumeAllStickers()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->a(Z)V

    return-void
.end method

.method public showGroupSticker(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->isGroupStickerUsed(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "The sticker group has already been used"

    :goto_0
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->stickers:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->removeAllStickers()V

    iput-boolean v1, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->d:Z

    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    invoke-direct {p0, v2}, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->a(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerManager;->d:Z

    return p1

    :cond_3
    :goto_2
    const-string p1, "invalid sticker group"

    goto :goto_0
.end method
