.class Lcom/freeme/camera/ui/OnScreenHintManager$Stack;
.super Ljava/lang/Object;
.source "OnScreenHintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/ui/OnScreenHintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Stack"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private storage:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/freeme/camera/ui/OnScreenHintManager;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/ui/OnScreenHintManager;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager$Stack;->this$0:Lcom/freeme/camera/ui/OnScreenHintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager$Stack;->storage:Ljava/util/LinkedList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/ui/OnScreenHintManager;Lcom/freeme/camera/ui/OnScreenHintManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/ui/OnScreenHintManager$Stack;-><init>(Lcom/freeme/camera/ui/OnScreenHintManager;)V

    return-void
.end method


# virtual methods
.method public empty()Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager$Stack;->storage:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager$Stack;->storage:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager$Stack;->storage:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager$Stack;->storage:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager$Stack;->storage:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager$Stack;->storage:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
