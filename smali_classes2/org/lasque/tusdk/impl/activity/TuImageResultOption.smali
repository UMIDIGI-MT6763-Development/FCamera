.class public abstract Lorg/lasque/tusdk/impl/activity/TuImageResultOption;
.super Lorg/lasque/tusdk/impl/activity/TuResultOption;


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/activity/TuResultOption;-><init>()V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuImageResultOption;->isShowResultPreview()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->setShowResultPreview(Z)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuImageResultOption;->isAutoRemoveTemp()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->setAutoRemoveTemp(Z)V

    return-void
.end method


# virtual methods
.method protected fragmentInstance()Lorg/lasque/tusdk/impl/activity/TuFragment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/lasque/tusdk/impl/activity/TuFragment;",
            ">()TT;"
        }
    .end annotation

    invoke-super {p0}, Lorg/lasque/tusdk/impl/activity/TuResultOption;->fragmentInstance()Lorg/lasque/tusdk/impl/activity/TuFragment;

    move-result-object v0

    instance-of v1, v0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;

    invoke-direct {p0, v1}, Lorg/lasque/tusdk/impl/activity/TuImageResultOption;->a(Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;)V

    :cond_0
    return-object v0
.end method

.method public isAutoRemoveTemp()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultOption;->b:Z

    return v0
.end method

.method public isShowResultPreview()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultOption;->a:Z

    return v0
.end method

.method public setAutoRemoveTemp(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultOption;->b:Z

    return-void
.end method

.method public setShowResultPreview(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultOption;->a:Z

    return-void
.end method
