.class public abstract Lmf/org/apache/xml/resolver/helpers/PublicId;
.super Ljava/lang/Object;
.source "PublicId.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeURN(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "urn:publicid:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%2F"

    const-string v1, "/"

    invoke-static {p0, v0, v1}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ":"

    const-string v1, "//"

    invoke-static {p0, v0, v1}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%3A"

    const-string v1, ":"

    invoke-static {p0, v0, v1}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ";"

    const-string v1, "::"

    invoke-static {p0, v0, v1}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "+"

    const-string v1, " "

    invoke-static {p0, v0, v1}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%2B"

    const-string v1, "+"

    invoke-static {p0, v0, v1}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%23"

    const-string v1, "#"

    invoke-static {p0, v0, v1}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%3F"

    const-string v1, "?"

    invoke-static {p0, v0, v1}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%27"

    const-string v1, "\'"

    invoke-static {p0, v0, v1}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%3B"

    const-string v1, ";"

    invoke-static {p0, v0, v1}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%25"

    const-string v1, "%"

    invoke-static {p0, v0, v1}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p0
.end method

.method public static encodeURN(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lmf/org/apache/xml/resolver/helpers/PublicId;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%"

    const-string v1, "%25"

    invoke-static {p0, v0, v1}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ";"

    const-string v1, "%3B"

    invoke-static {p0, v0, v1}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\'"

    const-string v1, "%27"

    invoke-static {p0, v0, v1}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "?"

    const-string v1, "%3F"

    invoke-static {p0, v0, v1}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "#"

    const-string v1, "%23"

    invoke-static {p0, v0, v1}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "+"

    const-string v1, "%2B"

    invoke-static {p0, v0, v1}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, " "

    const-string v1, "+"

    invoke-static {p0, v0, v1}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "::"

    const-string v1, ";"

    invoke-static {p0, v0, v1}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ":"

    const-string v1, "%3A"

    invoke-static {p0, v0, v1}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "//"

    const-string v1, ":"

    invoke-static {p0, v0, v1}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    const-string v1, "%2F"

    invoke-static {p0, v0, v1}, Lmf/org/apache/xml/resolver/helpers/PublicId;->stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "urn:publicid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x20

    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v0, "  "

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static stringReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    :goto_0
    if-gez v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method
