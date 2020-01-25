.class Lmf/org/apache/xerces/stax/events/StartElementImpl$1;
.super Ljava/lang/Object;
.source "StartElementImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/stax/events/StartElementImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lmf/javax/xml/namespace/QName;

    check-cast p2, Lmf/javax/xml/namespace/QName;

    invoke-virtual {p1}, Lmf/javax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lmf/javax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
