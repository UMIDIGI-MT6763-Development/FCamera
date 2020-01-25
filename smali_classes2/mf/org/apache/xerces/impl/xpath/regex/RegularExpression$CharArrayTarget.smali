.class final Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;
.super Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;
.source "RegularExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CharArrayTarget"
.end annotation


# instance fields
.field target:[C


# direct methods
.method constructor <init>([C)V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;->target:[C

    return-void
.end method

.method private final regionMatches(IIII)Z
    .locals 2

    :goto_0
    add-int/lit8 p2, p4, -0x1

    if-gtz p4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object p4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;->target:[C

    add-int/lit8 v0, p1, 0x1

    aget-char p1, p4, p1

    add-int/lit8 v1, p3, 0x1

    aget-char p3, p4, p3

    if-eq p1, p3, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    move p4, p2

    move p1, v0

    move p3, v1

    goto :goto_0
.end method

.method private final regionMatches(IILjava/lang/String;I)Z
    .locals 3

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    add-int/lit8 v1, p4, -0x1

    if-gtz p4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object p4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;->target:[C

    add-int/lit8 v2, p1, 0x1

    aget-char p1, p4, p1

    add-int/lit8 p4, v0, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq p1, v0, :cond_1

    return p2

    :cond_1
    move v0, p4

    move p4, v1

    move p1, v2

    goto :goto_0
.end method

.method private final regionMatchesIgnoreCase(IIII)Z
    .locals 2

    :goto_0
    add-int/lit8 p2, p4, -0x1

    if-gtz p4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object p4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;->target:[C

    add-int/lit8 v0, p1, 0x1

    aget-char p1, p4, p1

    add-int/lit8 v1, p3, 0x1

    aget-char p3, p4, p3

    if-ne p1, p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    invoke-static {p3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p3

    if-ne p1, p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    invoke-static {p3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p3

    if-eq p1, p3, :cond_3

    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_1
    move p4, p2

    move p1, v0

    move p3, v1

    goto :goto_0
.end method

.method private final regionMatchesIgnoreCase(IILjava/lang/String;I)Z
    .locals 3

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    add-int/lit8 v1, p4, -0x1

    if-gtz p4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object p4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;->target:[C

    add-int/lit8 v2, p1, 0x1

    aget-char p1, p4, p1

    add-int/lit8 p4, v0, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    if-eq p1, v0, :cond_3

    return p2

    :cond_3
    :goto_1
    move v0, p4

    move p4, v1

    move p1, v2

    goto :goto_0
.end method


# virtual methods
.method charAt(I)C
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;->target:[C

    aget-char p1, v0, p1

    return p1
.end method

.method final regionMatches(ZIIII)Z
    .locals 1

    if-ltz p2, :cond_2

    sub-int v0, p3, p2

    if-ge v0, p5, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0, p2, p3, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;->regionMatchesIgnoreCase(IIII)Z

    move-result p1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2, p3, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;->regionMatches(IIII)Z

    move-result p1

    :goto_0
    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method final regionMatches(ZIILjava/lang/String;I)Z
    .locals 1

    if-ltz p2, :cond_2

    sub-int v0, p3, p2

    if-ge v0, p5, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0, p2, p3, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;->regionMatchesIgnoreCase(IILjava/lang/String;I)Z

    move-result p1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2, p3, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;->regionMatches(IILjava/lang/String;I)Z

    move-result p1

    :goto_0
    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method final resetTarget([C)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;->target:[C

    return-void
.end method
