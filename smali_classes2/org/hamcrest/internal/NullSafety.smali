.class public Lorg/hamcrest/internal/NullSafety;
.super Ljava/lang/Object;
.source "NullSafety.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static nullSafe([Lorg/hamcrest/Matcher;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/hamcrest/Matcher<",
            "-TE;>;)",
            "Ljava/util/List<",
            "Lorg/hamcrest/Matcher<",
            "-TE;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    if-nez v3, :cond_0

    invoke-static {}, Lorg/hamcrest/core/IsNull;->nullValue()Lorg/hamcrest/Matcher;

    move-result-object v3

    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
