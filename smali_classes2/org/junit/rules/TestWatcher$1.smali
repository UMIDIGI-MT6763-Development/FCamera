.class Lorg/junit/rules/TestWatcher$1;
.super Lorg/junit/runners/model/Statement;
.source "TestWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/junit/rules/TestWatcher;->apply(Lorg/junit/runners/model/Statement;Lorg/junit/runner/Description;)Lorg/junit/runners/model/Statement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/junit/rules/TestWatcher;

.field final synthetic val$base:Lorg/junit/runners/model/Statement;

.field final synthetic val$description:Lorg/junit/runner/Description;


# direct methods
.method constructor <init>(Lorg/junit/rules/TestWatcher;Lorg/junit/runner/Description;Lorg/junit/runners/model/Statement;)V
    .locals 0

    iput-object p1, p0, Lorg/junit/rules/TestWatcher$1;->this$0:Lorg/junit/rules/TestWatcher;

    iput-object p2, p0, Lorg/junit/rules/TestWatcher$1;->val$description:Lorg/junit/runner/Description;

    iput-object p3, p0, Lorg/junit/rules/TestWatcher$1;->val$base:Lorg/junit/runners/model/Statement;

    invoke-direct {p0}, Lorg/junit/runners/model/Statement;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/junit/rules/TestWatcher$1;->this$0:Lorg/junit/rules/TestWatcher;

    iget-object v2, p0, Lorg/junit/rules/TestWatcher$1;->val$description:Lorg/junit/runner/Description;

    invoke-static {v1, v2, v0}, Lorg/junit/rules/TestWatcher;->access$000(Lorg/junit/rules/TestWatcher;Lorg/junit/runner/Description;Ljava/util/List;)V

    :try_start_0
    iget-object v1, p0, Lorg/junit/rules/TestWatcher$1;->val$base:Lorg/junit/runners/model/Statement;

    invoke-virtual {v1}, Lorg/junit/runners/model/Statement;->evaluate()V

    iget-object v1, p0, Lorg/junit/rules/TestWatcher$1;->this$0:Lorg/junit/rules/TestWatcher;

    iget-object v2, p0, Lorg/junit/rules/TestWatcher$1;->val$description:Lorg/junit/runner/Description;

    invoke-static {v1, v2, v0}, Lorg/junit/rules/TestWatcher;->access$100(Lorg/junit/rules/TestWatcher;Lorg/junit/runner/Description;Ljava/util/List;)V
    :try_end_0
    .catch Lorg/junit/internal/AssumptionViolatedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v1, p0, Lorg/junit/rules/TestWatcher$1;->this$0:Lorg/junit/rules/TestWatcher;

    iget-object v2, p0, Lorg/junit/rules/TestWatcher$1;->val$description:Lorg/junit/runner/Description;

    invoke-static {v1, v2, v0}, Lorg/junit/rules/TestWatcher;->access$400(Lorg/junit/rules/TestWatcher;Lorg/junit/runner/Description;Ljava/util/List;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/junit/rules/TestWatcher$1;->this$0:Lorg/junit/rules/TestWatcher;

    iget-object v3, p0, Lorg/junit/rules/TestWatcher$1;->val$description:Lorg/junit/runner/Description;

    invoke-static {v2, v1, v3, v0}, Lorg/junit/rules/TestWatcher;->access$300(Lorg/junit/rules/TestWatcher;Ljava/lang/Throwable;Lorg/junit/runner/Description;Ljava/util/List;)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/junit/rules/TestWatcher$1;->this$0:Lorg/junit/rules/TestWatcher;

    iget-object v3, p0, Lorg/junit/rules/TestWatcher$1;->val$description:Lorg/junit/runner/Description;

    invoke-static {v2, v1, v3, v0}, Lorg/junit/rules/TestWatcher;->access$200(Lorg/junit/rules/TestWatcher;Lorg/junit/internal/AssumptionViolatedException;Lorg/junit/runner/Description;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-static {v0}, Lorg/junit/runners/model/MultipleFailureException;->assertEmpty(Ljava/util/List;)V

    return-void

    :goto_2
    iget-object v2, p0, Lorg/junit/rules/TestWatcher$1;->this$0:Lorg/junit/rules/TestWatcher;

    iget-object v3, p0, Lorg/junit/rules/TestWatcher$1;->val$description:Lorg/junit/runner/Description;

    invoke-static {v2, v3, v0}, Lorg/junit/rules/TestWatcher;->access$400(Lorg/junit/rules/TestWatcher;Lorg/junit/runner/Description;Ljava/util/List;)V

    throw v1
.end method
