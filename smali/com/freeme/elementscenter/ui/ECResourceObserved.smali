.class public Lcom/freeme/elementscenter/ui/ECResourceObserved;
.super Ljava/lang/Object;
.source "ECResourceObserved.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/elementscenter/ui/ECResourceObserved$DataDeleteListener;
    }
.end annotation


# static fields
.field private static mObserved:Lcom/freeme/elementscenter/ui/ECResourceObserved;


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freeme/elementscenter/ui/ECResourceObserved$DataDeleteListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceObserved;->mList:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/freeme/elementscenter/ui/ECResourceObserved;
    .locals 1

    sget-object v0, Lcom/freeme/elementscenter/ui/ECResourceObserved;->mObserved:Lcom/freeme/elementscenter/ui/ECResourceObserved;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/elementscenter/ui/ECResourceObserved;

    invoke-direct {v0}, Lcom/freeme/elementscenter/ui/ECResourceObserved;-><init>()V

    sput-object v0, Lcom/freeme/elementscenter/ui/ECResourceObserved;->mObserved:Lcom/freeme/elementscenter/ui/ECResourceObserved;

    :cond_0
    sget-object v0, Lcom/freeme/elementscenter/ui/ECResourceObserved;->mObserved:Lcom/freeme/elementscenter/ui/ECResourceObserved;

    return-object v0
.end method


# virtual methods
.method public notifyDataDelete(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freeme/elementscenter/ui/ECItemData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceObserved;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/elementscenter/ui/ECResourceObserved$DataDeleteListener;

    invoke-interface {v1, p1}, Lcom/freeme/elementscenter/ui/ECResourceObserved$DataDeleteListener;->onDataDeleted(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerListener(Lcom/freeme/elementscenter/ui/ECResourceObserved$DataDeleteListener;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceObserved;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterListener(Lcom/freeme/elementscenter/ui/ECResourceObserved$DataDeleteListener;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceObserved;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
