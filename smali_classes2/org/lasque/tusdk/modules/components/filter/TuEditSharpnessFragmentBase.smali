.class public abstract Lorg/lasque/tusdk/modules/components/filter/TuEditSharpnessFragmentBase;
.super Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;-><init>()V

    return-void
.end method

.method private a()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;
    .locals 3

    new-instance v0, Lorg/lasque/tusdk/modules/components/filter/TuEditSharpnessFragmentBase$1;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditSharpnessFragmentBase$1;-><init>(Lorg/lasque/tusdk/modules/components/filter/TuEditSharpnessFragmentBase;)V

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->id:J

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->canDefinition:Z

    iput-boolean v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->isInternal:Z

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->creat(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected loadView(Landroid/view/ViewGroup;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->loadView(Landroid/view/ViewGroup;)V

    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->editSharpnessFragment:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    invoke-direct {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditSharpnessFragmentBase;->a()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/filter/TuEditSharpnessFragmentBase;->setFilterWrap(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V

    return-void
.end method
