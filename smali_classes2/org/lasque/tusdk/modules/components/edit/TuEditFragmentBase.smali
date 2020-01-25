.class public abstract Lorg/lasque/tusdk/modules/components/edit/TuEditFragmentBase;
.super Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/components/edit/TuEditActionType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;-><init>()V

    return-void
.end method

.method private a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/components/edit/TuEditActionType;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lorg/lasque/tusdk/modules/components/edit/TuEditActionType;->TypeCuter:Lorg/lasque/tusdk/modules/components/edit/TuEditActionType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/lasque/tusdk/modules/components/edit/TuEditActionType;->TypeTurn:Lorg/lasque/tusdk/modules/components/edit/TuEditActionType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/secret/SdkValid;->wipeFilterEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/lasque/tusdk/modules/components/edit/TuEditActionType;->TypeWipeFilter:Lorg/lasque/tusdk/modules/components/edit/TuEditActionType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v1, Lorg/lasque/tusdk/modules/components/edit/TuEditActionType;->TypeAperture:Lorg/lasque/tusdk/modules/components/edit/TuEditActionType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected asyncNotifyProcessing(Lorg/lasque/tusdk/core/TuSdkResult;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getModules()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/components/edit/TuEditActionType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditFragmentBase;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditFragmentBase;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditFragmentBase;->a:Ljava/util/List;

    :cond_1
    invoke-direct {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditFragmentBase;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditFragmentBase;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method protected loadView(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method protected notifyProcessing(Lorg/lasque/tusdk/core/TuSdkResult;)V
    .locals 0

    return-void
.end method

.method public setModules(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/components/edit/TuEditActionType;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditFragmentBase;->a:Ljava/util/List;

    return-void
.end method

.method protected viewDidLoad(Landroid/view/ViewGroup;)V
    .locals 2

    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->multipleEditFragment:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    return-void
.end method
