.class public Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;
.super Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public categoryId:J
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "category_id"
    .end annotation
.end field

.field public file:Ljava/lang/String;
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "file"
    .end annotation
.end field

.field public groupId:J
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "id"
    .end annotation
.end field

.field public isDownload:Z

.field public name:Ljava/lang/String;
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "name"
    .end annotation
.end field

.field public name_en:Ljava/lang/String;
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "name_en"
    .end annotation
.end field

.field public previewName:Ljava/lang/String;
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "thumb"
    .end annotation
.end field

.field public stickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "stickers"
    .end annotation
.end field

.field public validKey:Ljava/lang/String;
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "valid_key"
    .end annotation
.end field

.field public validType:I
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "valid_type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;-><init>()V

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->deserialize(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public copy()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;
    .locals 4

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;

    invoke-direct {v0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;-><init>()V

    iget-wide v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->groupId:J

    iput-wide v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->groupId:J

    iget-wide v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->categoryId:J

    iput-wide v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->categoryId:J

    iget-object v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->name:Ljava/lang/String;

    iput-object v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->name_en:Ljava/lang/String;

    iput-object v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->name_en:Ljava/lang/String;

    iget-boolean v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->isDownload:Z

    iput-boolean v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->isDownload:Z

    iget-object v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->stickers:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->stickers:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    iget-object v3, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->copy()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public deserialize(Lorg/json/JSONObject;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->groupId:J

    const-string v0, "category_id"

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->categoryId:J

    const-string v0, "file"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->file:Ljava/lang/String;

    const-string v0, "valid_type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->validType:I

    const-string v0, "valid_key"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->validKey:Ljava/lang/String;

    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->name:Ljava/lang/String;

    const-string v0, "name_en"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->name_en:Ljava/lang/String;

    const-string v0, "thumb"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->previewName:Ljava/lang/String;

    const-string v0, "stickers"

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/json/JsonHelper;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->stickers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->stickers:Ljava/util/ArrayList;

    new-instance v4, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    invoke-direct {v4, v2}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getNameOfLanguage()Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->name_en:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->name_en:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewNamePath()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->previewName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->WEB_PIC_DOMAIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->previewName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSticker(J)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->stickers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    iget-wide v3, v2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->stickerId:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method public requireFaceFeature()Z
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->stickers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    invoke-virtual {v2}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->requireFaceFeature()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method
