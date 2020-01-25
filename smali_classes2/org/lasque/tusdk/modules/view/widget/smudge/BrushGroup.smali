.class public Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;
.super Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public brushes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "brushes"
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

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->deserialize(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public copy()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;
    .locals 4

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;

    invoke-direct {v0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;-><init>()V

    iget-wide v1, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->groupId:J

    iput-wide v1, v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->groupId:J

    iget-object v1, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->name:Ljava/lang/String;

    iput-object v1, v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->name:Ljava/lang/String;

    iget-boolean v1, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->isDownload:Z

    iput-boolean v1, v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->isDownload:Z

    iget-object v1, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->brushes:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->brushes:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->brushes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    iget-object v3, v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->brushes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->copy()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

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

    move-result-wide v0

    iput-wide v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->groupId:J

    const-string v0, "file"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->file:Ljava/lang/String;

    const-string v0, "valid_type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->validType:I

    const-string v0, "valid_key"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->validKey:Ljava/lang/String;

    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->name:Ljava/lang/String;

    const-string v0, "brushes"

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

    iput-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->brushes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->brushes:Ljava/util/ArrayList;

    new-instance v4, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    invoke-direct {v4, v2}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getBrush(J)Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->brushes:Ljava/util/ArrayList;

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

    check-cast v2, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    iget-wide v3, v2, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->brushId:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method
