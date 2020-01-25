.class public Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;
.super Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public categoryId:I
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "category_id"
    .end annotation
.end field

.field public code:Ljava/lang/String;
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "code"
    .end annotation
.end field

.field public color:Ljava/lang/String;
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "color"
    .end annotation
.end field

.field public defaultFilterId:J
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "default_filter_id"
    .end annotation
.end field

.field public disableRuntime:Z
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "un_real_time"
    .end annotation
.end field

.field public file:Ljava/lang/String;
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "file"
    .end annotation
.end field

.field public filters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "filters"
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

.field public thumb:Ljava/lang/String;
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "thumb"
    .end annotation
.end field

.field public thumbKey:Ljava/lang/String;
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "thumb_key"
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

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->deserialize(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static create(JILjava/lang/String;JLjava/lang/String;)Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;-><init>()V

    iput-wide p0, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->groupId:J

    iput p2, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->validType:I

    iput-object p3, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->code:Ljava/lang/String;

    iput-wide p4, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->defaultFilterId:J

    iput-object p6, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->color:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public copy()Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;
    .locals 3

    new-instance v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;-><init>()V

    iget-wide v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->groupId:J

    iput-wide v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->groupId:J

    iget v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->categoryId:I

    iput v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->categoryId:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->code:Ljava/lang/String;

    iput-object v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->code:Ljava/lang/String;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->name:Ljava/lang/String;

    iput-object v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->thumb:Ljava/lang/String;

    iput-object v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->thumb:Ljava/lang/String;

    iget-wide v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->defaultFilterId:J

    iput-wide v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->defaultFilterId:J

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->color:Ljava/lang/String;

    iput-object v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->color:Ljava/lang/String;

    iget-boolean v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->disableRuntime:Z

    iput-boolean v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->disableRuntime:Z

    iget-boolean v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->isDownload:Z

    iput-boolean v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->isDownload:Z

    return-object v0
.end method

.method public deserialize(Lorg/json/JSONObject;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->groupId:J

    const-string v0, "file"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->file:Ljava/lang/String;

    const-string v0, "category_id"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->categoryId:I

    const-string v0, "valid_type"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->validType:I

    const-string v0, "valid_key"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->validKey:Ljava/lang/String;

    const-string v0, "code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->code:Ljava/lang/String;

    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->name:Ljava/lang/String;

    const-string v0, "thumb"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->thumb:Ljava/lang/String;

    const-string v0, "thumb_key"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->thumbKey:Ljava/lang/String;

    const-string v0, "color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->color:Ljava/lang/String;

    const-string v0, "un_real_time"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->disableRuntime:Z

    const-string v0, "filters"

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/json/JsonHelper;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->filters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_2

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->filters:Ljava/util/ArrayList;

    new-instance v8, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    invoke-direct {v8, v6}, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "default_filter_id"

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->defaultFilterId:J

    iget-wide v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->defaultFilterId:J

    const-wide/16 v4, 0x1

    cmp-long p1, v0, v4

    if-gez p1, :cond_3

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->filters:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->filters:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    iget-wide v0, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->id:J

    iput-wide v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->defaultFilterId:J

    :cond_3
    return-void
.end method

.method public getDefaultFilter()Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;
    .locals 2

    iget-wide v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->defaultFilterId:J

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->getFilterOption(J)Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultFilterThumbKey()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->getDefaultFilter()Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->thumbKey:Ljava/lang/String;

    return-object v0
.end method

.method public getFilterOption(J)Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->filters:Ljava/util/ArrayList;

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

    check-cast v2, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    iget-wide v3, v2, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->id:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->name:Ljava/lang/String;

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->getNameKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameKey()Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->name:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->code:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->categoryId:I

    if-lez v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
