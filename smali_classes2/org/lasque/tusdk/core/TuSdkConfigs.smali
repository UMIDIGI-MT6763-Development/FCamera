.class public Lorg/lasque/tusdk/core/TuSdkConfigs;
.super Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public brushGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "brushGroups"
    .end annotation
.end field

.field public filterGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "filterGroups"
    .end annotation
.end field

.field public master:Ljava/lang/String;
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "master"
    .end annotation
.end field

.field public masters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "masters"
    .end annotation
.end field

.field public stickerCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "stickerCategories"
    .end annotation
.end field

.field public stickerGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "stickerGroups"
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

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/TuSdkConfigs;->deserialize(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public deserialize(Lorg/json/JSONObject;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "master"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/TuSdkConfigs;->master:Ljava/lang/String;

    const-string v0, "masters"

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/json/JsonHelper;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/json/JsonHelper;->toHashMap(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/TuSdkConfigs;->masters:Ljava/util/HashMap;

    const-string v0, "filterGroups"

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/json/JsonHelper;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/lasque/tusdk/core/TuSdkConfigs;->filterGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lorg/lasque/tusdk/core/TuSdkConfigs;->filterGroups:Ljava/util/ArrayList;

    new-instance v6, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    invoke-direct {v6, v4}, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "stickerCategories"

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/json/JsonHelper;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/lasque/tusdk/core/TuSdkConfigs;->stickerCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lorg/lasque/tusdk/core/TuSdkConfigs;->stickerCategories:Ljava/util/ArrayList;

    new-instance v6, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;

    invoke-direct {v6, v4}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "stickerGroups"

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/json/JsonHelper;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/lasque/tusdk/core/TuSdkConfigs;->stickerGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    move v3, v1

    :goto_2
    if-ge v3, v2, :cond_3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lorg/lasque/tusdk/core/TuSdkConfigs;->stickerGroups:Ljava/util/ArrayList;

    new-instance v6, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;

    invoke-direct {v6, v4}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const-string v0, "brushGroups"

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/json/JsonHelper;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/TuSdkConfigs;->brushGroups:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    :goto_3
    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lorg/lasque/tusdk/core/TuSdkConfigs;->brushGroups:Ljava/util/ArrayList;

    new-instance v4, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;

    invoke-direct {v4, v2}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method
