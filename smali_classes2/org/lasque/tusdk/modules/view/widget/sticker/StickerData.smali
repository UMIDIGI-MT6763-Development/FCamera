.class public final Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;
.super Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData$StickerType;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field public categoryId:J
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "category_id"
    .end annotation
.end field

.field public groupId:J
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "group_id"
    .end annotation
.end field

.field public height:I
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "height"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "name"
    .end annotation
.end field

.field public positionInfo:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "sticker_face_info"
    .end annotation
.end field

.field public previewName:Ljava/lang/String;
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "thumb_name"
    .end annotation
.end field

.field public stickerId:J
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "id"
    .end annotation
.end field

.field public stickerImageName:Ljava/lang/String;
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "sticker_name"
    .end annotation
.end field

.field public stickerType:I
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "type_id"
    .end annotation
.end field

.field public texts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "texts"
    .end annotation
.end field

.field public width:I
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "width"
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

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->deserialize(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static create(JJLjava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;
    .locals 0

    new-instance p8, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    invoke-direct {p8}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;-><init>()V

    iput-wide p0, p8, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->stickerId:J

    iput-wide p2, p8, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->categoryId:J

    iput-object p4, p8, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->previewName:Ljava/lang/String;

    iput-object p5, p8, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->stickerImageName:Ljava/lang/String;

    iput p6, p8, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->width:I

    iput p7, p8, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->height:I

    return-object p8
.end method


# virtual methods
.method public copy()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;
    .locals 4

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    invoke-direct {v0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;-><init>()V

    iget-wide v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->stickerId:J

    iput-wide v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->stickerId:J

    iget-wide v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->groupId:J

    iput-wide v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->groupId:J

    iget-wide v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->categoryId:J

    iput-wide v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->categoryId:J

    iget v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->width:I

    iput v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->width:I

    iget v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->height:I

    iput v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->height:I

    iget v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->stickerType:I

    iput v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->stickerType:I

    iget-object v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->a:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->texts:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget v2, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->stickerType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->texts:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->texts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;

    iget-object v3, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->texts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->copy()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public deserialize(Lorg/json/JSONObject;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->stickerId:J

    const-string v0, "group_id"

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->groupId:J

    const-string v0, "category_id"

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->categoryId:J

    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->name:Ljava/lang/String;

    const-string v0, "thumb_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->previewName:Ljava/lang/String;

    const-string v0, "sticker_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->stickerImageName:Ljava/lang/String;

    const-string v0, "width"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->width:I

    const-string v0, "height"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->height:I

    const-string v0, "type_id"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->stickerType:I

    const-string v0, "texts"

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/json/JsonHelper;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->texts:Ljava/util/ArrayList;

    new-instance v5, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;

    invoke-direct {v5, v3}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "sticker_face_info"

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/json/JsonHelper;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;

    invoke-direct {v0, p1}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->positionInfo:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;

    :cond_2
    return-void
.end method

.method public final getImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getStickerText(J)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->texts:Ljava/util/ArrayList;

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

    check-cast v2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;

    iget-wide v3, v2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->textId:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method public getType()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData$StickerType;
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->stickerType:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData$StickerType;->TypeImage:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData$StickerType;

    return-object v0

    :pswitch_0
    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData$StickerType;->TypeDynamic:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData$StickerType;

    return-object v0

    :pswitch_1
    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData$StickerType;->TypeText:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData$StickerType;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public requireFaceFeature()Z
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->getType()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData$StickerType;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData$StickerType;->TypeDynamic:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData$StickerType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->positionInfo:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->getPosType()Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->getValue()I

    move-result v0

    sget-object v1, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosFullScreen:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->getValue()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public final setImage(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->a:Landroid/graphics/Bitmap;

    return-void
.end method

.method public size()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->width:I

    iget v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->height:I

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(II)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    return-object v0
.end method

.method public sizePixies()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->size()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->dp2Pix()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    return-object v0
.end method
