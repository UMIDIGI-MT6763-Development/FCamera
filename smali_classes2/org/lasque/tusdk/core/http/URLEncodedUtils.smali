.class public Lorg/lasque/tusdk/core/http/URLEncodedUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/http/URLEncodedUtils$BasicNameValuePair;
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field private static final a:Ljava/util/BitSet;

.field private static final b:Ljava/util/BitSet;

.field private static final c:Ljava/util/BitSet;

.field private static final d:Ljava/util/BitSet;

.field private static final e:Ljava/util/BitSet;

.field private static final f:Ljava/util/BitSet;

.field private static final g:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->a:Ljava/util/BitSet;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->b:Ljava/util/BitSet;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->c:Ljava/util/BitSet;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->d:Ljava/util/BitSet;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->e:Ljava/util/BitSet;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->f:Ljava/util/BitSet;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->g:Ljava/util/BitSet;

    const/16 v0, 0x61

    :goto_0
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_0

    sget-object v1, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->a:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    sget-object v1, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->a:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x30

    :goto_2
    const/16 v1, 0x39

    if-gt v0, v1, :cond_2

    sget-object v1, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->a:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->a:Ljava/util/BitSet;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->a:Ljava/util/BitSet;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->a:Ljava/util/BitSet;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->a:Ljava/util/BitSet;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->g:Ljava/util/BitSet;

    sget-object v1, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->a:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->a:Ljava/util/BitSet;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->a:Ljava/util/BitSet;

    const/16 v1, 0x7e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->a:Ljava/util/BitSet;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->a:Ljava/util/BitSet;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->a:Ljava/util/BitSet;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->b:Ljava/util/BitSet;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->b:Ljava/util/BitSet;

    const/16 v2, 0x3b

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->b:Ljava/util/BitSet;

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->b:Ljava/util/BitSet;

    const/16 v4, 0x24

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->b:Ljava/util/BitSet;

    const/16 v5, 0x26

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->b:Ljava/util/BitSet;

    const/16 v6, 0x2b

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->b:Ljava/util/BitSet;

    const/16 v7, 0x3d

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->c:Ljava/util/BitSet;

    sget-object v8, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->a:Ljava/util/BitSet;

    invoke-virtual {v0, v8}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->c:Ljava/util/BitSet;

    sget-object v8, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->b:Ljava/util/BitSet;

    invoke-virtual {v0, v8}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->d:Ljava/util/BitSet;

    sget-object v8, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->a:Ljava/util/BitSet;

    invoke-virtual {v0, v8}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->d:Ljava/util/BitSet;

    const/16 v8, 0x2f

    invoke-virtual {v0, v8}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->d:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->d:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->d:Ljava/util/BitSet;

    const/16 v9, 0x40

    invoke-virtual {v0, v9}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->d:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->d:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->d:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->d:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->d:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->f:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->f:Ljava/util/BitSet;

    invoke-virtual {v0, v8}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->f:Ljava/util/BitSet;

    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->f:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->f:Ljava/util/BitSet;

    invoke-virtual {v0, v9}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->f:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->f:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->f:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->f:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->f:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->f:Ljava/util/BitSet;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->f:Ljava/util/BitSet;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->e:Ljava/util/BitSet;

    sget-object v1, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->f:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->e:Ljava/util/BitSet;

    sget-object v1, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->a:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "UTF-8"

    :goto_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    sget-object v0, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->g:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->a(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/BitSet;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/BitSet;Z)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    int-to-char p1, p1

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    const/16 v1, 0x20

    if-ne p1, v1, :cond_2

    const/16 p1, 0x2b

    goto :goto_1

    :cond_2
    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    and-int/lit8 p1, p1, 0xf

    invoke-static {p1, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/List;CLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/http/URLEncodedUtils$BasicNameValuePair;",
            ">;C",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/http/URLEncodedUtils$BasicNameValuePair;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/http/URLEncodedUtils$BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/http/URLEncodedUtils$BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/http/URLEncodedUtils$BasicNameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/16 v0, 0x26

    invoke-static {p0, v0, p1}, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->format(Ljava/util/List;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const-string v0, "getURI: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method
