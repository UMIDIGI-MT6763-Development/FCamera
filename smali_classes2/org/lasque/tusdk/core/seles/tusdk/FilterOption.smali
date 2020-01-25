.class public Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;
.super Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/seles/tusdk/FilterOption$RunTimeTextureDelegate;
    }
.end annotation


# instance fields
.field private a:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption$RunTimeTextureDelegate;

.field public argList:Ljava/lang/String;
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "args_list"
    .end annotation
.end field

.field public args:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "args"
    .end annotation
.end field

.field public canDefinition:Z
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "can_definition"
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

.field public disableRuntime:Z
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "un_real_time"
    .end annotation
.end field

.field public encryptType:I
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "fk_key"
    .end annotation
.end field

.field public filterType:I
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "filter_type"
    .end annotation
.end field

.field public fragment:Ljava/lang/String;
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "fragment"
    .end annotation
.end field

.field public groupId:J
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "group_id"
    .end annotation
.end field

.field public id:J
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "id"
    .end annotation
.end field

.field public internalTextures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isInternal:Z

.field public name:Ljava/lang/String;
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "name"
    .end annotation
.end field

.field public textures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "textures"
    .end annotation
.end field

.field public texturesKeepInput:Z
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "textures_keep_input"
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

.field public version:I
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "ver"
    .end annotation
.end field

.field public vertex:Ljava/lang/String;
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "vertex"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption$RunTimeTextureDelegate;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption$RunTimeTextureDelegate;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->deserialize(Lorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption$RunTimeTextureDelegate;)V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption$RunTimeTextureDelegate;

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption$RunTimeTextureDelegate;

    return-void
.end method


# virtual methods
.method public copy()Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;
    .locals 3

    new-instance v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->getRuntimeTextureDelegate()Lorg/lasque/tusdk/core/seles/tusdk/FilterOption$RunTimeTextureDelegate;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;-><init>(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption$RunTimeTextureDelegate;)V

    iget-wide v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->id:J

    iput-wide v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->id:J

    iget-wide v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->groupId:J

    iput-wide v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->groupId:J

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->code:Ljava/lang/String;

    iput-object v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->code:Ljava/lang/String;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->name:Ljava/lang/String;

    iput-object v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->thumb:Ljava/lang/String;

    iput-object v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->thumb:Ljava/lang/String;

    iget v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->filterType:I

    iput v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->filterType:I

    iget-boolean v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->texturesKeepInput:Z

    iput-boolean v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->texturesKeepInput:Z

    iget-boolean v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->canDefinition:Z

    iput-boolean v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->canDefinition:Z

    iget v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->encryptType:I

    iput v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->encryptType:I

    iget-boolean v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->isInternal:Z

    iput-boolean v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->isInternal:Z

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->color:Ljava/lang/String;

    iput-object v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->color:Ljava/lang/String;

    iget-boolean v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->disableRuntime:Z

    iput-boolean v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->disableRuntime:Z

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->args:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->args:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->args:Ljava/util/HashMap;

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->internalTextures:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->internalTextures:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->internalTextures:Ljava/util/ArrayList;

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

    iput-wide v3, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->id:J

    const-string v0, "group_id"

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->groupId:J

    const-string v0, "code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->code:Ljava/lang/String;

    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->name:Ljava/lang/String;

    const-string v0, "thumb"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->thumb:Ljava/lang/String;

    const-string v0, "thumb_key"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->thumbKey:Ljava/lang/String;

    const-string v0, "filter_type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->filterType:I

    const-string v0, "color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->color:Ljava/lang/String;

    const-string v0, "textures_keep_input"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->texturesKeepInput:Z

    const-string v0, "can_definition"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    move v2, v1

    :cond_2
    iput-boolean v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->canDefinition:Z

    const-string v0, "fk_key"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->encryptType:I

    const-string v0, "ver"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->version:I

    const-string v0, "vertex"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->vertex:Ljava/lang/String;

    const-string v0, "fragment"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->fragment:Ljava/lang/String;

    const-string v0, "textures"

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/json/JsonHelper;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/json/JsonHelper;->toStringList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->textures:Ljava/util/ArrayList;

    const-string v0, "args"

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/json/JsonHelper;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/json/JsonHelper;->toHashMap(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->args:Ljava/util/HashMap;

    const-string v0, "args_list"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->argList:Ljava/lang/String;

    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption$RunTimeTextureDelegate;

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->textures:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->internalTextures:Ljava/util/ArrayList;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->id:J

    check-cast p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    iget-wide v3, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->id:J

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->createFilter(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->name:Ljava/lang/String;

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->name:Ljava/lang/String;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->name:Ljava/lang/String;

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->code:Ljava/lang/String;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRuntimeTextureDelegate()Lorg/lasque/tusdk/core/seles/tusdk/FilterOption$RunTimeTextureDelegate;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption$RunTimeTextureDelegate;

    return-object v0
.end method
