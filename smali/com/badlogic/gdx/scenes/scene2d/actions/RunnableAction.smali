.class public Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "RunnableAction.java"


# instance fields
.field private ran:Z

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    return-void
.end method


# virtual methods
.method public act(F)Z
    .locals 1

    iget-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->ran:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->ran:Z

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->run()V

    :cond_0
    return v0
.end method

.method public getRunnable()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method public restart()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->ran:Z

    return-void
.end method

.method public run()V
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->getPool()Lcom/badlogic/gdx/utils/Pool;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->setPool(Lcom/badlogic/gdx/utils/Pool;)V

    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->runnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->setPool(Lcom/badlogic/gdx/utils/Pool;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->setPool(Lcom/badlogic/gdx/utils/Pool;)V

    throw v1
.end method

.method public setRunnable(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->runnable:Ljava/lang/Runnable;

    return-void
.end method
