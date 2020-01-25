.class public abstract Lorg/lasque/tusdk/modules/components/TuSdkComponentOption;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/lasque/tusdk/modules/components/TuSdkComponentOption;->a:I

    return-void
.end method

.method private a(Lorg/lasque/tusdk/impl/activity/TuFragment;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/TuSdkComponentOption;->getRootViewLayoutId()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/impl/activity/TuFragment;->setRootViewLayoutId(I)V

    return-void
.end method


# virtual methods
.method protected fragmentInstance()Lorg/lasque/tusdk/impl/activity/TuFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/lasque/tusdk/impl/activity/TuFragment;",
            ">()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/TuSdkComponentOption;->getComponentClazz()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->classInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/impl/activity/TuFragment;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/modules/components/TuSdkComponentOption;->a(Lorg/lasque/tusdk/impl/activity/TuFragment;)V

    return-object v0
.end method

.method public getComponentClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/TuSdkComponentOption;->b:Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/TuSdkComponentOption;->getDefaultComponentClazz()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/TuSdkComponentOption;->b:Ljava/lang/Class;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/TuSdkComponentOption;->b:Ljava/lang/Class;

    return-object v0
.end method

.method protected abstract getDefaultComponentClazz()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method protected abstract getDefaultRootViewLayoutId()I
.end method

.method public getRootViewLayoutId()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/modules/components/TuSdkComponentOption;->a:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/TuSdkComponentOption;->getDefaultRootViewLayoutId()I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/modules/components/TuSdkComponentOption;->a:I

    :cond_0
    iget v0, p0, Lorg/lasque/tusdk/modules/components/TuSdkComponentOption;->a:I

    return v0
.end method

.method public setComponentClazz(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/TuSdkComponentOption;->getComponentClazz()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/TuSdkComponentOption;->getDefaultComponentClazz()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/TuSdkComponentOption;->b:Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public setRootViewLayoutId(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/modules/components/TuSdkComponentOption;->a:I

    return-void
.end method
