.class public Lorg/lasque/tusdk/core/secret/FilterAdapter;
.super Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/secret/FilterAdapter$FiltersConfigDelegate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter<",
        "Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare;",
        ">;"
    }
.end annotation


# static fields
.field public static final NormalFilterCode:Ljava/lang/String; = "Normal"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lorg/lasque/tusdk/core/secret/FilterAdapter$FiltersConfigDelegate;

.field private e:Z

.field private f:Lorg/lasque/tusdk/core/TuSdkConfigs;


# direct methods
.method public constructor <init>(Lorg/lasque/tusdk/core/TuSdkConfigs;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/secret/FilterAdapter;->f:Lorg/lasque/tusdk/core/TuSdkConfigs;

    sget-object p1, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;->TypeFilter:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->setDownloadTaskType(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->b()V

    return-void
.end method

.method private a(J)Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/FilterAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    iget-wide v2, v1, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->groupId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/FilterAdapter;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    return-object p1
.end method

.method private a()V
    .locals 4

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/secret/FilterAdapter;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/FilterAdapter;->d:Lorg/lasque/tusdk/core/secret/FilterAdapter$FiltersConfigDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/lasque/tusdk/core/secret/FilterAdapter$FiltersConfigDelegate;->onFiltersConfigInited()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/secret/FilterAdapter;->d:Lorg/lasque/tusdk/core/secret/FilterAdapter$FiltersConfigDelegate;

    const-string v0, "FiltersConfig inited: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/lasque/tusdk/core/secret/FilterAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private varargs a(Ljava/lang/String;IZZ[Ljava/lang/String;)V
    .locals 5

    new-instance v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;-><init>()V

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->id:J

    iput-object p1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->code:Ljava/lang/String;

    const-string v1, "lsq_filter_%s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->name:Ljava/lang/String;

    iput p2, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->filterType:I

    if-eqz p5, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p5

    invoke-direct {p2, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->textures:Ljava/util/ArrayList;

    :cond_0
    iput-boolean p3, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->texturesKeepInput:Z

    iput-boolean p4, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->canDefinition:Z

    iput v2, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->encryptType:I

    iput-boolean v2, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->isInternal:Z

    iget-object p2, p0, Lorg/lasque/tusdk/core/secret/FilterAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/lasque/tusdk/core/secret/FilterAdapter;->b:Ljava/util/Hashtable;

    invoke-virtual {p2, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private varargs a(Ljava/lang/String;IZ[Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->a(Ljava/lang/String;IZZ[Ljava/lang/String;)V

    return-void
.end method

.method private varargs a(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->a(Ljava/lang/String;IZ[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/secret/FilterAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->c()V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;)V
    .locals 5

    if-eqz p1, :cond_a

    iget-object v0, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->file:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->file:Ljava/lang/String;

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkBundle;->sdkBundleTexture(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/lasque/tusdk/core/secret/SdkValid;->loadFilterGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-class v1, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/json/JsonWrapper;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    if-eqz v0, :cond_a

    iget-wide v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->groupId:J

    invoke-virtual {p0, v1, v2}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->containsGroupId(J)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->filters:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    iget-object v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->filters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->filters:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->filters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, v0}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->a(Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;)V

    goto :goto_1

    :cond_5
    :goto_0
    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->b(Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;)Z

    :goto_1
    iget-object v1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->name:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->name:Ljava/lang/String;

    iput-object v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->name:Ljava/lang/String;

    :cond_6
    iget-object v1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->thumb:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->thumb:Ljava/lang/String;

    iput-object v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->thumb:Ljava/lang/String;

    :cond_7
    iget-object v1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->color:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->color:Ljava/lang/String;

    iput-object v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->color:Ljava/lang/String;

    :cond_8
    iget-wide v1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->defaultFilterId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_9

    iget-wide v1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->defaultFilterId:J

    invoke-virtual {v0, v1, v2}, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->getFilterOption(J)Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-wide v1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->defaultFilterId:J

    iput-wide v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->defaultFilterId:J

    :cond_9
    iget-object p1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->filters:Ljava/util/ArrayList;

    if-eqz p1, :cond_a

    iget-object p1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->filters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lorg/lasque/tusdk/core/secret/FilterAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_2
    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->filters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->filters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    iget-wide v2, v1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->id:J

    invoke-virtual {p2, v2, v3}, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->getFilterOption(J)Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v3, v2, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->version:I

    const/16 v4, 0x8

    if-le v3, v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->name:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->name:Ljava/lang/String;

    iput-object v3, v2, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->name:Ljava/lang/String;

    :cond_2
    iget-object v3, v1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->thumb:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, v1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->thumb:Ljava/lang/String;

    iput-object v3, v2, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->thumb:Ljava/lang/String;

    :cond_3
    iget-object v3, v1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->color:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->color:Ljava/lang/String;

    iput-object v3, v2, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->color:Ljava/lang/String;

    :cond_4
    iget-boolean v3, p2, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->disableRuntime:Z

    iput-boolean v3, v2, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->disableRuntime:Z

    iget-object v3, v1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->args:Ljava/util/HashMap;

    if-eqz v3, :cond_5

    invoke-direct {p0, v1, v2}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->a(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)V

    :cond_5
    invoke-direct {p0, v2}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->a(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    iput-object v0, p2, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->filters:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)V
    .locals 3

    iget-object v0, p2, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->args:Ljava/util/HashMap;

    if-nez v0, :cond_0

    iget-object p1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->args:Ljava/util/HashMap;

    iput-object p1, p2, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->args:Ljava/util/HashMap;

    return-void

    :cond_0
    iget-object p1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->args:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p2, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->args:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/widget/ImageView;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-static {p2}, Lorg/lasque/tusdk/core/TuSdkContext;->getDrawableResId(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/secret/FilterAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/secret/FilterAdapter;->e:Z

    return p1
.end method

.method private a(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)Z
    .locals 2

    iget v0, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->version:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/FilterAdapter;->c:Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/FilterAdapter;->c:Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/FilterAdapter;->b:Ljava/util/Hashtable;

    iget-object v1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->code:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Lorg/lasque/tusdk/core/TuSdkBundle;->sdkBundleTexture(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/lasque/tusdk/core/TuSdkContext;->getAssetsBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private b(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;",
            ")",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/seles/sources/SelesPicture;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->textures:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->groupId:J

    invoke-direct {p0, v1, v2}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->a(J)Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->textures:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->textures:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/lasque/tusdk/core/TuSdkBundle;->sdkBundleTexture(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/lasque/tusdk/core/TuSdkContext;->getAssetsBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v1, v3, v4}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private b()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/secret/FilterAdapter;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/secret/FilterAdapter;->b:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/secret/FilterAdapter;->c:Ljava/util/ArrayList;

    const-string v0, "Normal"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->tryLoadTaskDataWithCache()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/lasque/tusdk/core/secret/FilterAdapter$1;

    invoke-direct {v1, p0}, Lorg/lasque/tusdk/core/secret/FilterAdapter$1;-><init>(Lorg/lasque/tusdk/core/secret/FilterAdapter;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/secret/FilterAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->a()V

    return-void
.end method

.method private b(Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;)Z
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->filters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->filters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    iget-boolean v3, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->disableRuntime:Z

    iput-boolean v3, v2, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->disableRuntime:Z

    invoke-direct {p0, v2}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->a(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object v0, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->filters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private c(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;
    .locals 2

    iget-object v0, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->vertex:Ljava/lang/String;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/StringHelper;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->fragment:Ljava/lang/String;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/StringHelper;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKProgramFilter;

    iget-object v1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->vertex:Ljava/lang/String;

    iget-object p1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->fragment:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKProgramFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    iget-object v0, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->fragment:Ljava/lang/String;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/StringHelper;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKProgramFilter;

    iget-object p1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->fragment:Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKProgramFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private c()V
    .locals 2

    const-string v0, "lsq_internal_filters.filter"

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkBundle;->sdkBundleTexture(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v1, v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->loadFilterConfig(Ljava/lang/String;)Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/FilterAdapter;->f:Lorg/lasque/tusdk/core/TuSdkConfigs;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/lasque/tusdk/core/TuSdkConfigs;->filterGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/lasque/tusdk/core/secret/FilterAdapter;->f:Lorg/lasque/tusdk/core/TuSdkConfigs;

    iget-object v1, v1, Lorg/lasque/tusdk/core/TuSdkConfigs;->filterGroups:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    invoke-direct {p0, v1}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->a(Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->asyncLoadDownloadDatas()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lorg/lasque/tusdk/core/secret/FilterAdapter$2;

    invoke-direct {v1, p0}, Lorg/lasque/tusdk/core/secret/FilterAdapter$2;-><init>(Lorg/lasque/tusdk/core/secret/FilterAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private d()Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/FilterAdapter;->b:Ljava/util/Hashtable;

    const-string v1, "Normal"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    return-object v0
.end method


# virtual methods
.method protected appendDownload(Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;)Z
    .locals 3

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;->appendDownload(Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->localDownloadPath()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->key:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Lorg/lasque/tusdk/core/secret/SdkValid;->loadFilterGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const-class v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/json/JsonWrapper;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    if-nez p1, :cond_2

    return v1

    :cond_2
    iget-object v0, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->filters:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->filters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->isDownload:Z

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->b(Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/lasque/tusdk/core/secret/FilterAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method protected asyncTaskLoadImage(Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare;)Landroid/graphics/Bitmap;
    .locals 5

    iget-object v0, p1, Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare;->taskType:Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare$FilterThumbTaskType;

    sget-object v1, Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare$FilterThumbTaskType;->TypeGroupThumb:Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare$FilterThumbTaskType;

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare;->group:Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare;->group:Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    iget-object v0, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->thumb:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p1, Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare;->group:Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    iget-wide v1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->groupId:J

    invoke-direct {p0, v1, v2}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->a(J)Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    move-result-object p1

    if-eqz p1, :cond_4

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    iget-wide v1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->groupId:J

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare;->taskType:Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare$FilterThumbTaskType;

    sget-object v1, Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare$FilterThumbTaskType;->TypeFilterThumb:Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare$FilterThumbTaskType;

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare;->option:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare;->option:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    iget-object v0, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->thumb:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    iget-object v1, p1, Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare;->option:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    iget-wide v1, v1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->groupId:J

    invoke-direct {p0, v1, v2}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->a(J)Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    move-result-object v1

    if-eqz v1, :cond_4

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    iget-wide v1, v1, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->groupId:J

    iget-object p1, p1, Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare;->option:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    iget-wide v3, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->id:J

    :goto_0
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/lasque/tusdk/core/secret/SdkValid;->readFilterThumb(JJ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_1
    return-object v0
.end method

.method protected bridge synthetic asyncTaskLoadImage(Lorg/lasque/tusdk/core/task/ImageViewTaskWare;)Landroid/graphics/Bitmap;
    .locals 0

    check-cast p1, Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->asyncTaskLoadImage(Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public containsGroupId(J)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->a(J)Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public createFilter(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->code:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->a(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    iget v1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->filterType:I

    if-eqz v1, :cond_7

    const/16 v2, 0x10

    if-eq v1, v2, :cond_6

    const/16 v2, 0x20

    if-eq v1, v2, :cond_5

    const/16 v2, 0x50

    if-eq v1, v2, :cond_4

    const/16 v2, 0x70

    if-eq v1, v2, :cond_3

    const/16 p1, 0xf0

    if-eq v1, p1, :cond_2

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    return-object v0

    :pswitch_0
    new-instance p1, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKLiveSkinColor2Filter;

    invoke-direct {p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKLiveSkinColor2Filter;-><init>()V

    return-object p1

    :pswitch_1
    new-instance p1, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKLiveSkinColorFilter;

    invoke-direct {p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKLiveSkinColorFilter;-><init>()V

    return-object p1

    :pswitch_2
    new-instance p1, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorSelectiveFilter;

    invoke-direct {p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorSelectiveFilter;-><init>()V

    return-object p1

    :pswitch_3
    new-instance p1, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;

    invoke-direct {p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;-><init>()V

    return-object p1

    :pswitch_4
    new-instance p1, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2Filter;

    invoke-direct {p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2Filter;-><init>()V

    return-object p1

    :pswitch_5
    new-instance p1, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;

    invoke-direct {p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;-><init>()V

    return-object p1

    :pswitch_6
    new-instance p1, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightGlareFilter;

    invoke-direct {p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightGlareFilter;-><init>()V

    return-object p1

    :pswitch_7
    new-instance p1, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorHDRFilter;

    invoke-direct {p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorHDRFilter;-><init>()V

    return-object p1

    :pswitch_8
    new-instance p1, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;

    invoke-direct {p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;-><init>()V

    return-object p1

    :cond_2
    new-instance p1, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorNoirFilter;

    invoke-direct {p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorNoirFilter;-><init>()V

    return-object p1

    :cond_3
    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->c(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p1, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter;

    invoke-direct {p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/arts/TuSDKArtBrushFilter;-><init>()V

    return-object p1

    :cond_5
    new-instance p1, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorLomoFilter;

    invoke-direct {p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorLomoFilter;-><init>()V

    return-object p1

    :cond_6
    new-instance p1, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixedFilter;

    invoke-direct {p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixedFilter;-><init>()V

    return-object p1

    :cond_7
    new-instance p1, Lorg/lasque/tusdk/core/seles/tusdk/filters/TuSDKNormalFilter;

    invoke-direct {p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/TuSDKNormalFilter;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x40
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x60
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getAllGroupID()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "*>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/lasque/tusdk/core/secret/FilterAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/secret/FilterAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    iget-wide v2, v2, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->groupId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected getCacheKey(Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/core/secret/FilterAdapter$3;->a:[I

    iget-object v1, p1, Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare;->taskType:Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare$FilterThumbTaskType;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare$FilterThumbTaskType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p1, Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare;->option:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare;->option:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    iget-object p1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->thumbKey:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    iget-object v0, p1, Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare;->group:Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare;->group:Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    iget-object p1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->thumbKey:Ljava/lang/String;

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic getCacheKey(Lorg/lasque/tusdk/core/task/ImageViewTaskWare;)Ljava/lang/String;
    .locals 0

    check-cast p1, Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->getCacheKey(Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/FilterAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->verifyCodes(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFilters(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/lasque/tusdk/core/secret/FilterAdapter;->b:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->copy()Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getGroupDefaultFilterCode(Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-wide v1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->groupId:J

    invoke-direct {p0, v1, v2}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->a(J)Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->getDefaultFilter()Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    iget-object p1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->code:Ljava/lang/String;

    return-object p1
.end method

.method public getGroupFilters(Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;",
            ")",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-wide v1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->groupId:J

    invoke-direct {p0, v1, v2}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->a(J)Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->filters:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->filters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->filters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->filters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->copy()Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public getGroupNameKey(J)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->a(J)Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->getNameKey()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getGroupType(J)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->a(J)Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->getType()I

    move-result p1

    return p1
.end method

.method public getGroups()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/lasque/tusdk/core/secret/FilterAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/secret/FilterAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    iget v3, v2, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->categoryId:I

    if-gtz v3, :cond_0

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->copy()Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public isInited()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/secret/FilterAdapter;->e:Z

    return v0
.end method

.method public loadFilterThumb(Landroid/widget/ImageView;Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)V
    .locals 3

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p2, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->code:Ljava/lang/String;

    invoke-direct {p0, p2}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->a(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object v0, p2, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->thumb:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->a(Landroid/widget/ImageView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare;

    sget-object v1, Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare$FilterThumbTaskType;->TypeFilterThumb:Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare$FilterThumbTaskType;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare;-><init>(Landroid/widget/ImageView;Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare$FilterThumbTaskType;Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->loadImage(Lorg/lasque/tusdk/core/task/ImageViewTaskWare;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public loadGroupDefaultFilterThumb(Landroid/widget/ImageView;Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;)V
    .locals 2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p2, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->groupId:J

    invoke-direct {p0, v0, v1}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->a(J)Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->getDefaultFilter()Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->loadFilterThumb(Landroid/widget/ImageView;Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public loadGroupThumb(Landroid/widget/ImageView;Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;)V
    .locals 3

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p2, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->groupId:J

    invoke-direct {p0, v0, v1}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->a(J)Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object v0, p2, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->thumb:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->a(Landroid/widget/ImageView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare;

    sget-object v1, Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare$FilterThumbTaskType;->TypeGroupThumb:Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare$FilterThumbTaskType;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p2}, Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare;-><init>(Landroid/widget/ImageView;Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare$FilterThumbTaskType;Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->loadImage(Lorg/lasque/tusdk/core/task/ImageViewTaskWare;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public loadInternalTextures(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/seles/sources/SelesPicture;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/secret/SdkValid;->readInternalTextures(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public loadTextures(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/seles/sources/SelesPicture;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->a(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->textures:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->encryptType:I

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->b(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    iget-wide v1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->groupId:J

    iget-object p1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->textures:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, p1}, Lorg/lasque/tusdk/core/secret/SdkValid;->readTextures(JLjava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public option(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->a(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->copy()Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->d()Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->copy()Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    move-result-object p1

    return-object p1
.end method

.method protected removeDownloadData(J)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->a(J)Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->filters:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->filters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    iget-object v3, p0, Lorg/lasque/tusdk/core/secret/FilterAdapter;->b:Ljava/util/Hashtable;

    iget-object v4, v2, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->code:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lorg/lasque/tusdk/core/secret/FilterAdapter;->c:Ljava/util/ArrayList;

    iget-object v2, v2, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->code:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/lasque/tusdk/core/secret/FilterAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    iget-wide v2, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->groupId:J

    invoke-virtual {v1, v2, v3}, Lorg/lasque/tusdk/core/secret/SdkValid;->removeFilterGroup(J)V

    const-string v0, "remove download filter [%s]: %s | %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    iget-object p2, p0, Lorg/lasque/tusdk/core/secret/FilterAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x2

    iget-object p2, p0, Lorg/lasque/tusdk/core/secret/FilterAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setInitDelegate(Lorg/lasque/tusdk/core/secret/FilterAdapter$FiltersConfigDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/secret/FilterAdapter;->d:Lorg/lasque/tusdk/core/secret/FilterAdapter$FiltersConfigDelegate;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->a()V

    return-void
.end method

.method public verifyCodes(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/secret/FilterAdapter;->e:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/FilterAdapter;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->sdkValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/lasque/tusdk/core/secret/FilterAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
