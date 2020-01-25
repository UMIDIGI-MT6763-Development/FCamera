.class public Lcom/badlogic/gdx/utils/XmlReader;
.super Ljava/lang/Object;
.source "XmlReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/XmlReader$Element;
    }
.end annotation


# static fields
.field private static final _xml_actions:[B

.field private static final _xml_index_offsets:[S

.field private static final _xml_indicies:[B

.field private static final _xml_key_offsets:[B

.field private static final _xml_range_lengths:[B

.field private static final _xml_single_lengths:[B

.field private static final _xml_trans_actions:[B

.field private static final _xml_trans_keys:[C

.field private static final _xml_trans_targs:[B

.field static final xml_en_elementBody:I = 0xf

.field static final xml_en_main:I = 0x1

.field static final xml_error:I = 0x0

.field static final xml_first_final:I = 0x22

.field static final xml_start:I = 0x1


# instance fields
.field private current:Lcom/badlogic/gdx/utils/XmlReader$Element;

.field private final elements:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/utils/XmlReader$Element;",
            ">;"
        }
    .end annotation
.end field

.field private root:Lcom/badlogic/gdx/utils/XmlReader$Element;

.field private final textBuffer:Lcom/badlogic/gdx/utils/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_actions_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_actions:[B

    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_key_offsets_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_key_offsets:[B

    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_trans_keys_0()[C

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_keys:[C

    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_single_lengths_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_single_lengths:[B

    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_range_lengths_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_range_lengths:[B

    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_index_offsets_0()[S

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_index_offsets:[S

    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_indicies_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_indicies:[B

    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_trans_targs_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_targs:[B

    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_trans_actions_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_actions:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->textBuffer:Lcom/badlogic/gdx/utils/StringBuilder;

    return-void
.end method

.method private static init__xml_actions_0()[B
    .locals 1

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x2t
        0x1t
        0x3t
        0x1t
        0x4t
        0x1t
        0x5t
        0x1t
        0x6t
        0x1t
        0x7t
        0x2t
        0x0t
        0x6t
        0x2t
        0x1t
        0x4t
        0x2t
        0x2t
        0x4t
    .end array-data
.end method

.method private static init__xml_index_offsets_0()[S
    .locals 1

    const/16 v0, 0x24

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 2
        0x0s
        0x0s
        0x4s
        0x9s
        0xes
        0x14s
        0x1as
        0x1es
        0x23s
        0x25s
        0x27s
        0x2cs
        0x30s
        0x34s
        0x36s
        0x38s
        0x3cs
        0x3es
        0x43s
        0x48s
        0x4es
        0x54s
        0x58s
        0x5ds
        0x5fs
        0x61s
        0x66s
        0x6as
        0x6es
        0x70s
        0x74s
        0x76s
        0x78s
        0x7as
        0x7cs
        0x7fs
    .end array-data
.end method

.method private static init__xml_indicies_0()[B
    .locals 1

    const/16 v0, 0x81

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x2t
        0x0t
        0x1t
        0x2t
        0x1t
        0x1t
        0x2t
        0x3t
        0x5t
        0x6t
        0x7t
        0x5t
        0x4t
        0x9t
        0xat
        0x1t
        0xbt
        0x9t
        0x8t
        0xdt
        0x1t
        0xet
        0x1t
        0xdt
        0xct
        0xft
        0x10t
        0xft
        0x1t
        0x10t
        0x11t
        0x12t
        0x10t
        0x1t
        0x14t
        0x13t
        0x16t
        0x15t
        0x9t
        0xat
        0xbt
        0x9t
        0x1t
        0x17t
        0x18t
        0x17t
        0x1t
        0x19t
        0xbt
        0x19t
        0x1t
        0x14t
        0x1at
        0x16t
        0x1bt
        0x1dt
        0x1et
        0x1dt
        0x1ct
        0x20t
        0x1ft
        0x1et
        0x22t
        0x1t
        0x1et
        0x21t
        0x24t
        0x25t
        0x26t
        0x24t
        0x23t
        0x28t
        0x29t
        0x1t
        0x2at
        0x28t
        0x27t
        0x2ct
        0x1t
        0x2dt
        0x1t
        0x2ct
        0x2bt
        0x2et
        0x2ft
        0x2et
        0x1t
        0x2ft
        0x30t
        0x31t
        0x2ft
        0x1t
        0x33t
        0x32t
        0x35t
        0x34t
        0x28t
        0x29t
        0x2at
        0x28t
        0x1t
        0x36t
        0x37t
        0x36t
        0x1t
        0x38t
        0x2at
        0x38t
        0x1t
        0x39t
        0x1t
        0x39t
        0x22t
        0x39t
        0x1t
        0x1t
        0x3at
        0x3bt
        0x3at
        0x33t
        0x3ct
        0x35t
        0x3dt
        0x3et
        0x3et
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method private static init__xml_key_offsets_0()[B
    .locals 1

    const/16 v0, 0x24

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x4t
        0x9t
        0xet
        0x14t
        0x1at
        0x1et
        0x23t
        0x24t
        0x25t
        0x2at
        0x2et
        0x32t
        0x33t
        0x34t
        0x38t
        0x39t
        0x3et
        0x43t
        0x49t
        0x4ft
        0x53t
        0x58t
        0x59t
        0x5at
        0x5ft
        0x63t
        0x67t
        0x68t
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x73t
    .end array-data
.end method

.method private static init__xml_range_lengths_0()[B
    .locals 1

    const/16 v0, 0x24

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method private static init__xml_single_lengths_0()[B
    .locals 1

    const/16 v0, 0x24

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x2t
        0x3t
        0x3t
        0x4t
        0x4t
        0x2t
        0x3t
        0x1t
        0x1t
        0x3t
        0x2t
        0x2t
        0x1t
        0x1t
        0x2t
        0x1t
        0x3t
        0x3t
        0x4t
        0x4t
        0x2t
        0x3t
        0x1t
        0x1t
        0x3t
        0x2t
        0x2t
        0x1t
        0x2t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method private static init__xml_trans_actions_0()[B
    .locals 1

    const/16 v0, 0x3f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x3t
        0x3t
        0x14t
        0x1t
        0x0t
        0x0t
        0x9t
        0x0t
        0xbt
        0xbt
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x11t
        0x0t
        0xdt
        0x5t
        0x17t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0xft
        0x1t
        0x0t
        0x0t
        0x3t
        0x3t
        0x14t
        0x1t
        0x0t
        0x0t
        0x9t
        0x0t
        0xbt
        0xbt
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x11t
        0x0t
        0xdt
        0x5t
        0x17t
        0x0t
        0x0t
        0x0t
        0x7t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method private static init__xml_trans_keys_0()[C
    .locals 1

    const/16 v0, 0x74

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 2
        0x20s
        0x3cs
        0x9s
        0xds
        0x20s
        0x2fs
        0x3es
        0x9s
        0xds
        0x20s
        0x2fs
        0x3es
        0x9s
        0xds
        0x20s
        0x2fs
        0x3ds
        0x3es
        0x9s
        0xds
        0x20s
        0x2fs
        0x3ds
        0x3es
        0x9s
        0xds
        0x20s
        0x3ds
        0x9s
        0xds
        0x20s
        0x22s
        0x27s
        0x9s
        0xds
        0x22s
        0x22s
        0x20s
        0x2fs
        0x3es
        0x9s
        0xds
        0x20s
        0x3es
        0x9s
        0xds
        0x20s
        0x3es
        0x9s
        0xds
        0x27s
        0x27s
        0x20s
        0x3cs
        0x9s
        0xds
        0x3cs
        0x20s
        0x2fs
        0x3es
        0x9s
        0xds
        0x20s
        0x2fs
        0x3es
        0x9s
        0xds
        0x20s
        0x2fs
        0x3ds
        0x3es
        0x9s
        0xds
        0x20s
        0x2fs
        0x3ds
        0x3es
        0x9s
        0xds
        0x20s
        0x3ds
        0x9s
        0xds
        0x20s
        0x22s
        0x27s
        0x9s
        0xds
        0x22s
        0x22s
        0x20s
        0x2fs
        0x3es
        0x9s
        0xds
        0x20s
        0x3es
        0x9s
        0xds
        0x20s
        0x3es
        0x9s
        0xds
        0x3cs
        0x20s
        0x2fs
        0x9s
        0xds
        0x3es
        0x3es
        0x27s
        0x27s
        0x20s
        0x9s
        0xds
        0x0s
    .end array-data
.end method

.method private static init__xml_trans_targs_0()[B
    .locals 1

    const/16 v0, 0x3f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x3t
        0x3t
        0x4t
        0xbt
        0x22t
        0x5t
        0x4t
        0xbt
        0x22t
        0x5t
        0x6t
        0x7t
        0x6t
        0x7t
        0x8t
        0xdt
        0x9t
        0xat
        0x9t
        0xat
        0xct
        0x22t
        0xct
        0xet
        0xet
        0x10t
        0xft
        0x11t
        0x10t
        0x11t
        0x12t
        0x1et
        0x12t
        0x13t
        0x1at
        0x1ct
        0x14t
        0x13t
        0x1at
        0x1ct
        0x14t
        0x15t
        0x16t
        0x15t
        0x16t
        0x17t
        0x20t
        0x18t
        0x19t
        0x18t
        0x19t
        0x1bt
        0x1ct
        0x1bt
        0x1dt
        0x1ft
        0x23t
        0x21t
        0x21t
        0x22t
    .end array-data
.end method


# virtual methods
.method protected attribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->current:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected close()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/XmlReader$Element;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/XmlReader$Element;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->current:Lcom/badlogic/gdx/utils/XmlReader$Element;

    return-void
.end method

.method protected entity(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "lt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "<"

    return-object p1

    :cond_0
    const-string v0, "gt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, ">"

    return-object p1

    :cond_1
    const-string v0, "amp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "&"

    return-object p1

    :cond_2
    const-string v0, "apos"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "\'"

    return-object p1

    :cond_3
    const-string v0, "quot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "\""

    return-object p1

    :cond_4
    const-string v0, "#x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method protected open(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/utils/XmlReader$Element;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/XmlReader;->current:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    iget-object p1, p0, Lcom/badlogic/gdx/utils/XmlReader;->current:Lcom/badlogic/gdx/utils/XmlReader$Element;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->addChild(Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->current:Lcom/badlogic/gdx/utils/XmlReader$Element;

    return-void
.end method

.method public parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/XmlReader$Element;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/files/FileHandle;->reader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parse(Ljava/io/InputStream;)Lcom/badlogic/gdx/utils/XmlReader$Element;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/XmlReader$Element;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [C

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {p1, v0, v2, v3}, Ljava/io/Reader;->read([CII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader;->parse([CII)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :cond_0
    if-nez v3, :cond_1

    :try_start_1
    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [C

    array-length v4, v0

    invoke-static {v0, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    goto :goto_0

    :cond_1
    add-int/2addr v2, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/utils/XmlReader;->parse([CII)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object p1

    return-object p1
.end method

.method public parse([CII)Lcom/badlogic/gdx/utils/XmlReader$Element;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const/4 v7, 0x2

    const/4 v8, 0x1

    move/from16 v10, p2

    move v11, v8

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    const/16 v15, 0x20

    packed-switch v9, :pswitch_data_0

    move/from16 v16, v8

    const/4 v6, 0x0

    goto/16 :goto_15

    :pswitch_0
    move/from16 v16, v8

    move v4, v11

    const/4 v6, 0x0

    move v11, v7

    goto/16 :goto_14

    :pswitch_1
    if-ne v10, v2, :cond_0

    const/4 v9, 0x4

    goto :goto_0

    :cond_0
    if-nez v11, :cond_1

    const/4 v9, 0x5

    goto :goto_0

    :cond_1
    :pswitch_2
    sget-object v9, Lcom/badlogic/gdx/utils/XmlReader;->_xml_key_offsets:[B

    aget-byte v9, v9, v11

    sget-object v16, Lcom/badlogic/gdx/utils/XmlReader;->_xml_index_offsets:[S

    aget-short v16, v16, v11

    sget-object v17, Lcom/badlogic/gdx/utils/XmlReader;->_xml_single_lengths:[B

    aget-byte v17, v17, v11

    if-lez v17, :cond_5

    add-int v18, v9, v17

    add-int/lit8 v19, v18, -0x1

    move v5, v9

    move/from16 v4, v19

    :goto_1
    if-ge v4, v5, :cond_2

    add-int v16, v16, v17

    goto :goto_2

    :cond_2
    sub-int v20, v4, v5

    shr-int/lit8 v20, v20, 0x1

    add-int v20, v5, v20

    aget-char v3, v1, v10

    sget-object v21, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_keys:[C

    aget-char v6, v21, v20

    if-ge v3, v6, :cond_3

    add-int/lit8 v4, v20, -0x1

    goto :goto_1

    :cond_3
    aget-char v3, v1, v10

    aget-char v5, v21, v20

    if-le v3, v5, :cond_4

    add-int/lit8 v5, v20, 0x1

    goto :goto_1

    :cond_4
    sub-int v20, v20, v9

    add-int v16, v16, v20

    goto :goto_4

    :cond_5
    move/from16 v18, v9

    :goto_2
    sget-object v3, Lcom/badlogic/gdx/utils/XmlReader;->_xml_range_lengths:[B

    aget-byte v3, v3, v11

    if-lez v3, :cond_9

    shl-int/lit8 v4, v3, 0x1

    add-int v4, v18, v4

    sub-int/2addr v4, v7

    move/from16 v5, v18

    :goto_3
    if-ge v4, v5, :cond_6

    add-int v16, v16, v3

    goto :goto_4

    :cond_6
    sub-int v6, v4, v5

    shr-int/2addr v6, v8

    and-int/lit8 v6, v6, -0x2

    add-int/2addr v6, v5

    aget-char v9, v1, v10

    sget-object v11, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_keys:[C

    aget-char v7, v11, v6

    if-ge v9, v7, :cond_7

    add-int/lit8 v4, v6, -0x2

    const/4 v7, 0x2

    goto :goto_3

    :cond_7
    aget-char v5, v1, v10

    add-int/lit8 v7, v6, 0x1

    aget-char v7, v11, v7

    if-le v5, v7, :cond_8

    add-int/lit8 v5, v6, 0x2

    const/4 v7, 0x2

    goto :goto_3

    :cond_8
    sub-int v6, v6, v18

    shr-int/lit8 v3, v6, 0x1

    add-int v16, v16, v3

    :cond_9
    :goto_4
    sget-object v3, Lcom/badlogic/gdx/utils/XmlReader;->_xml_indicies:[B

    aget-byte v3, v3, v16

    sget-object v4, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_targs:[B

    aget-byte v4, v4, v3

    sget-object v5, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_actions:[B

    aget-byte v6, v5, v3

    if-eqz v6, :cond_1e

    aget-byte v3, v5, v3

    sget-object v5, Lcom/badlogic/gdx/utils/XmlReader;->_xml_actions:[B

    add-int/lit8 v6, v3, 0x1

    aget-byte v3, v5, v3

    :goto_5
    add-int/lit8 v5, v3, -0x1

    if-lez v3, :cond_1d

    sget-object v3, Lcom/badlogic/gdx/utils/XmlReader;->_xml_actions:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v3, v3, v6

    packed-switch v3, :pswitch_data_1

    move/from16 v16, v8

    const/4 v6, 0x0

    const/4 v11, 0x2

    goto/16 :goto_13

    :pswitch_3
    move v3, v10

    :goto_6
    if-eq v3, v13, :cond_b

    add-int/lit8 v6, v3, -0x1

    aget-char v6, v1, v6

    const/16 v9, 0xd

    if-eq v6, v9, :cond_a

    if-eq v6, v15, :cond_a

    packed-switch v6, :pswitch_data_2

    goto :goto_7

    :cond_a
    :pswitch_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    :cond_b
    :goto_7
    move v9, v13

    const/4 v6, 0x0

    :goto_8
    if-eq v13, v3, :cond_10

    add-int/lit8 v11, v13, 0x1

    aget-char v13, v1, v13

    const/16 v15, 0x26

    if-eq v13, v15, :cond_c

    move v13, v11

    const/16 v15, 0x20

    goto :goto_8

    :cond_c
    move v13, v11

    :goto_9
    if-eq v13, v3, :cond_f

    add-int/lit8 v15, v13, 0x1

    aget-char v13, v1, v13

    const/16 v8, 0x3b

    if-eq v13, v8, :cond_d

    move v13, v15

    const/4 v8, 0x1

    goto :goto_9

    :cond_d
    iget-object v6, v0, Lcom/badlogic/gdx/utils/XmlReader;->textBuffer:Lcom/badlogic/gdx/utils/StringBuilder;

    sub-int v8, v11, v9

    const/16 v16, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v1, v9, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append([CII)Lcom/badlogic/gdx/utils/StringBuilder;

    new-instance v6, Ljava/lang/String;

    sub-int v8, v15, v11

    add-int/lit8 v8, v8, -0x1

    invoke-direct {v6, v1, v11, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/XmlReader;->entity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/badlogic/gdx/utils/XmlReader;->textBuffer:Lcom/badlogic/gdx/utils/StringBuilder;

    if-eqz v8, :cond_e

    move-object v6, v8

    :cond_e
    invoke-virtual {v9, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move v9, v15

    move v13, v9

    move/from16 v6, v16

    goto :goto_a

    :cond_f
    move/from16 v16, v8

    :goto_a
    move/from16 v8, v16

    const/16 v15, 0x20

    goto :goto_8

    :cond_10
    move/from16 v16, v8

    if-eqz v6, :cond_12

    if-ge v9, v3, :cond_11

    iget-object v6, v0, Lcom/badlogic/gdx/utils/XmlReader;->textBuffer:Lcom/badlogic/gdx/utils/StringBuilder;

    sub-int/2addr v3, v9

    invoke-virtual {v6, v1, v9, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append([CII)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_11
    iget-object v3, v0, Lcom/badlogic/gdx/utils/XmlReader;->textBuffer:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/XmlReader;->text(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/badlogic/gdx/utils/XmlReader;->textBuffer:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    goto :goto_b

    :cond_12
    const/4 v6, 0x0

    new-instance v8, Ljava/lang/String;

    sub-int/2addr v3, v9

    invoke-direct {v8, v1, v9, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/XmlReader;->text(Ljava/lang/String;)V

    :goto_b
    move v13, v9

    const/4 v11, 0x2

    goto/16 :goto_13

    :pswitch_5
    move/from16 v16, v8

    const/4 v6, 0x0

    new-instance v3, Ljava/lang/String;

    sub-int v8, v10, v13

    invoke-direct {v3, v1, v13, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v12, v3}, Lcom/badlogic/gdx/utils/XmlReader;->attribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x2

    goto/16 :goto_13

    :pswitch_6
    move/from16 v16, v8

    const/4 v6, 0x0

    new-instance v12, Ljava/lang/String;

    sub-int v3, v10, v13

    invoke-direct {v12, v1, v13, v3}, Ljava/lang/String;-><init>([CII)V

    const/4 v11, 0x2

    goto/16 :goto_13

    :pswitch_7
    move/from16 v16, v8

    const/4 v6, 0x0

    if-eqz v14, :cond_13

    move/from16 v8, v16

    const/4 v7, 0x2

    const/4 v9, 0x2

    const/16 v11, 0xf

    goto/16 :goto_0

    :cond_13
    const/4 v11, 0x2

    goto/16 :goto_13

    :pswitch_8
    move/from16 v16, v8

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/XmlReader;->close()V

    const/4 v7, 0x2

    const/4 v9, 0x2

    const/16 v11, 0xf

    goto/16 :goto_0

    :pswitch_9
    move/from16 v16, v8

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/XmlReader;->close()V

    move v14, v6

    const/4 v7, 0x2

    const/4 v9, 0x2

    const/16 v11, 0xf

    goto/16 :goto_0

    :pswitch_a
    move/from16 v16, v8

    const/4 v6, 0x0

    aget-char v3, v1, v13

    const/16 v8, 0x3f

    const/16 v9, 0x21

    if-eq v3, v8, :cond_15

    if-ne v3, v9, :cond_14

    goto :goto_c

    :cond_14
    new-instance v3, Ljava/lang/String;

    sub-int v8, v10, v13

    invoke-direct {v3, v1, v13, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/XmlReader;->open(Ljava/lang/String;)V

    move/from16 v14, v16

    const/4 v11, 0x2

    goto/16 :goto_13

    :cond_15
    :goto_c
    add-int/lit8 v4, v13, 0x1

    aget-char v5, v1, v4

    const/16 v7, 0x5b

    const/16 v8, 0x3e

    if-ne v5, v7, :cond_18

    add-int/lit8 v5, v13, 0x2

    aget-char v5, v1, v5

    const/16 v11, 0x43

    if-ne v5, v11, :cond_18

    add-int/lit8 v5, v13, 0x3

    aget-char v5, v1, v5

    const/16 v11, 0x44

    if-ne v5, v11, :cond_18

    add-int/lit8 v5, v13, 0x4

    aget-char v5, v1, v5

    const/16 v11, 0x41

    if-ne v5, v11, :cond_18

    add-int/lit8 v5, v13, 0x5

    aget-char v5, v1, v5

    const/16 v15, 0x54

    if-ne v5, v15, :cond_18

    add-int/lit8 v5, v13, 0x6

    aget-char v5, v1, v5

    if-ne v5, v11, :cond_18

    add-int/lit8 v5, v13, 0x7

    aget-char v5, v1, v5

    if-ne v5, v7, :cond_18

    add-int/lit8 v5, v13, 0x8

    add-int/lit8 v3, v5, 0x2

    :goto_d
    add-int/lit8 v4, v3, -0x2

    aget-char v4, v1, v4

    const/16 v7, 0x5d

    if-ne v4, v7, :cond_17

    add-int/lit8 v4, v3, -0x1

    aget-char v4, v1, v4

    const/16 v7, 0x5d

    if-ne v4, v7, :cond_17

    aget-char v4, v1, v3

    if-eq v4, v8, :cond_16

    goto :goto_e

    :cond_16
    new-instance v4, Ljava/lang/String;

    sub-int v7, v3, v5

    const/4 v11, 0x2

    sub-int/2addr v7, v11

    invoke-direct {v4, v1, v5, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/XmlReader;->text(Ljava/lang/String;)V

    move v10, v3

    move v13, v5

    goto :goto_12

    :cond_17
    :goto_e
    const/4 v11, 0x2

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_18
    const/4 v11, 0x2

    if-ne v3, v9, :cond_1b

    aget-char v3, v1, v4

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_1b

    add-int/lit8 v3, v13, 0x2

    aget-char v3, v1, v3

    if-ne v3, v4, :cond_1b

    add-int/lit8 v3, v13, 0x3

    :goto_f
    aget-char v5, v1, v3

    if-ne v5, v4, :cond_1a

    add-int/lit8 v5, v3, 0x1

    aget-char v5, v1, v5

    if-ne v5, v4, :cond_1a

    add-int/lit8 v5, v3, 0x2

    aget-char v7, v1, v5

    if-eq v7, v8, :cond_19

    goto :goto_10

    :cond_19
    move v10, v5

    goto :goto_12

    :cond_1a
    :goto_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_1b
    :goto_11
    aget-char v3, v1, v10

    if-eq v3, v8, :cond_1c

    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    :cond_1c
    :goto_12
    move v7, v11

    move v9, v7

    move/from16 v8, v16

    const/16 v11, 0xf

    goto/16 :goto_0

    :pswitch_b
    move/from16 v16, v8

    const/4 v6, 0x0

    const/4 v11, 0x2

    move v13, v10

    :goto_13
    move v3, v5

    move v6, v7

    move/from16 v8, v16

    const/16 v15, 0x20

    goto/16 :goto_5

    :cond_1d
    move/from16 v16, v8

    const/4 v6, 0x0

    const/4 v11, 0x2

    goto :goto_14

    :cond_1e
    move/from16 v16, v8

    const/4 v6, 0x0

    const/4 v11, 0x2

    :goto_14
    if-nez v4, :cond_1f

    move v7, v11

    move/from16 v8, v16

    const/4 v9, 0x5

    move v11, v4

    goto/16 :goto_0

    :cond_1f
    add-int/lit8 v10, v10, 0x1

    if-eq v10, v2, :cond_20

    move v7, v11

    move/from16 v8, v16

    move v9, v8

    move v11, v4

    goto/16 :goto_0

    :cond_20
    :goto_15
    if-ge v10, v2, :cond_23

    move/from16 v3, v16

    :goto_16
    if-ge v6, v10, :cond_22

    aget-char v4, v1, v6

    const/16 v5, 0xa

    if-ne v4, v5, :cond_21

    add-int/lit8 v3, v3, 0x1

    :cond_21
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_22
    new-instance v4, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error parsing XML on line "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " near: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    sub-int/2addr v2, v10

    const/16 v6, 0x20

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v3, v1, v10, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_23
    iget-object v1, v0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v1, :cond_24

    iget-object v1, v0, Lcom/badlogic/gdx/utils/XmlReader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/badlogic/gdx/utils/XmlReader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    return-object v1

    :cond_24
    iget-object v1, v0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/XmlReader$Element;

    iget-object v2, v0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    new-instance v2, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing XML, unclosed element: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x9
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method protected text(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->current:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/XmlReader;->current:Lcom/badlogic/gdx/utils/XmlReader$Element;

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->setText(Ljava/lang/String;)V

    return-void
.end method
