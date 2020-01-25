.class public Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;
.super Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;,
        Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryExtendType;
    }
.end annotation


# instance fields
.field public datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;",
            ">;"
        }
    .end annotation
.end field

.field public extendType:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryExtendType;

.field public id:J
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "id"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;-><init>(Ljava/lang/String;)V

    iput-wide p1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;->id:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;-><init>()V

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;->deserialize(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public append(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;->datas:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;->datas:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;->datas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public copy()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;
    .locals 4

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;

    invoke-direct {v0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;-><init>()V

    iget-wide v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;->id:J

    iput-wide v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;->id:J

    iget-object v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;->name:Ljava/lang/String;

    iput-object v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;->datas:Ljava/util/List;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;->datas:Ljava/util/List;

    iget-object v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;

    iget-object v3, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;->datas:Ljava/util/List;

    invoke-virtual {v2}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->copy()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public deserialize(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;->id:J

    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;->name:Ljava/lang/String;

    return-void
.end method

.method public insertFirst(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;->datas:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;->datas:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;->datas:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public removeGroup(J)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;->datas:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;

    iget-wide v3, v2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->groupId:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    iget-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;->datas:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object v2

    :cond_2
    return-object v1
.end method
