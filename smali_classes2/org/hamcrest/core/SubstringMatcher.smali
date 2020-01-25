.class public abstract Lorg/hamcrest/core/SubstringMatcher;
.super Lorg/hamcrest/TypeSafeMatcher;
.source "SubstringMatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/hamcrest/TypeSafeMatcher<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final ignoringCase:Z

.field private final relationship:Ljava/lang/String;

.field protected final substring:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/hamcrest/TypeSafeMatcher;-><init>()V

    iput-object p1, p0, Lorg/hamcrest/core/SubstringMatcher;->relationship:Ljava/lang/String;

    iput-boolean p2, p0, Lorg/hamcrest/core/SubstringMatcher;->ignoringCase:Z

    iput-object p3, p0, Lorg/hamcrest/core/SubstringMatcher;->substring:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected converted(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lorg/hamcrest/core/SubstringMatcher;->ignoringCase:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public bridge synthetic describeMismatchSafely(Ljava/lang/Object;Lorg/hamcrest/Description;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/hamcrest/core/SubstringMatcher;->describeMismatchSafely(Ljava/lang/String;Lorg/hamcrest/Description;)V

    return-void
.end method

.method public describeMismatchSafely(Ljava/lang/String;Lorg/hamcrest/Description;)V
    .locals 1

    const-string v0, "was \""

    invoke-interface {p2, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p1

    const-string p2, "\""

    invoke-interface {p1, p2}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    return-void
.end method

.method public describeTo(Lorg/hamcrest/Description;)V
    .locals 2

    const-string v0, "a string "

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object v0

    iget-object v1, p0, Lorg/hamcrest/core/SubstringMatcher;->relationship:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object v0

    const-string v1, " "

    invoke-interface {v0, v1}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object v0

    iget-object v1, p0, Lorg/hamcrest/core/SubstringMatcher;->substring:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    iget-boolean v0, p0, Lorg/hamcrest/core/SubstringMatcher;->ignoringCase:Z

    if-eqz v0, :cond_0

    const-string v0, " ignoring case"

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    :cond_0
    return-void
.end method

.method protected abstract evalSubstringOf(Ljava/lang/String;)Z
.end method

.method public bridge synthetic matchesSafely(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/hamcrest/core/SubstringMatcher;->matchesSafely(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public matchesSafely(Ljava/lang/String;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/hamcrest/core/SubstringMatcher;->ignoringCase:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/hamcrest/core/SubstringMatcher;->evalSubstringOf(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
