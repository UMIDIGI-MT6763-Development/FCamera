.class public Lcom/freeme/camera/data/LocalData$NewestFirstComparator;
.super Ljava/lang/Object;
.source "LocalData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/data/LocalData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewestFirstComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/freeme/camera/data/LocalData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compareDate(JJ)I
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ltz v2, :cond_2

    cmp-long v0, p2, v0

    if-ltz v0, :cond_2

    cmp-long p0, p0, p2

    if-gez p0, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    return v3

    :cond_2
    cmp-long p0, p2, p0

    if-gez p0, :cond_3

    move v3, v5

    goto :goto_1

    :cond_3
    if-lez p0, :cond_4

    goto :goto_1

    :cond_4
    move v3, v4

    :goto_1
    return v3
.end method


# virtual methods
.method public compare(Lcom/freeme/camera/data/LocalData;Lcom/freeme/camera/data/LocalData;)I
    .locals 4

    invoke-interface {p1}, Lcom/freeme/camera/data/LocalData;->getDateTaken()J

    move-result-wide v0

    invoke-interface {p2}, Lcom/freeme/camera/data/LocalData;->getDateTaken()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/freeme/camera/data/LocalData$NewestFirstComparator;->compareDate(JJ)I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/freeme/camera/data/LocalData;->getDateModified()J

    move-result-wide v0

    invoke-interface {p2}, Lcom/freeme/camera/data/LocalData;->getDateModified()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/freeme/camera/data/LocalData$NewestFirstComparator;->compareDate(JJ)I

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/freeme/camera/data/LocalData;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lcom/freeme/camera/data/LocalData;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_1
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/freeme/camera/data/LocalData;

    check-cast p2, Lcom/freeme/camera/data/LocalData;

    invoke-virtual {p0, p1, p2}, Lcom/freeme/camera/data/LocalData$NewestFirstComparator;->compare(Lcom/freeme/camera/data/LocalData;Lcom/freeme/camera/data/LocalData;)I

    move-result p1

    return p1
.end method
