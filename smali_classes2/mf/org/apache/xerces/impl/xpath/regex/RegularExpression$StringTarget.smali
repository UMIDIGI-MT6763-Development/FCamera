.class final Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;
.super Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;
.source "RegularExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StringTarget"
.end annotation


# instance fields
.field private target:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;->target:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final charAt(I)C
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;->target:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method final regionMatches(ZIIII)Z
    .locals 6

    sub-int/2addr p3, p2

    if-ge p3, p5, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;->target:Ljava/lang/String;

    const/4 v1, 0x1

    move-object v0, v3

    move v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;->target:Ljava/lang/String;

    invoke-virtual {p1, p2, p1, p4, p5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p1

    :goto_0
    return p1
.end method

.method final regionMatches(ZIILjava/lang/String;I)Z
    .locals 7

    sub-int/2addr p3, p2

    const/4 v0, 0x0

    if-ge p3, p5, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;->target:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v5, 0x0

    move v3, p2

    move-object v4, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;->target:Ljava/lang/String;

    invoke-virtual {p1, p2, p4, v0, p5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p1

    :goto_0
    return p1
.end method

.method final resetTarget(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;->target:Ljava/lang/String;

    return-void
.end method
