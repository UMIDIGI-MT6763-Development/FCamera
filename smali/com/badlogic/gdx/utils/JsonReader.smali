.class public Lcom/badlogic/gdx/utils/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/BaseJsonReader;


# static fields
.field private static final _json_actions:[B

.field private static final _json_eof_actions:[B

.field private static final _json_index_offsets:[S

.field private static final _json_indicies:[B

.field private static final _json_key_offsets:[S

.field private static final _json_range_lengths:[B

.field private static final _json_single_lengths:[B

.field private static final _json_trans_actions:[B

.field private static final _json_trans_keys:[C

.field private static final _json_trans_targs:[B

.field static final json_en_array:I = 0x17

.field static final json_en_main:I = 0x1

.field static final json_en_object:I = 0x5

.field static final json_error:I = 0x0

.field static final json_first_final:I = 0x23

.field static final json_start:I = 0x1


# instance fields
.field private current:Lcom/badlogic/gdx/utils/JsonValue;

.field private final elements:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ">;"
        }
    .end annotation
.end field

.field private final lastChild:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ">;"
        }
    .end annotation
.end field

.field private root:Lcom/badlogic/gdx/utils/JsonValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_actions_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_key_offsets_0()[S

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_key_offsets:[S

    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_trans_keys_0()[C

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_single_lengths_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_single_lengths:[B

    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_range_lengths_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_range_lengths:[B

    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_index_offsets_0()[S

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_index_offsets:[S

    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_indicies_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_indicies:[B

    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_trans_targs_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_targs:[B

    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_trans_actions_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_actions:[B

    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_eof_actions_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_eof_actions:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->lastChild:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method private addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 0

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/JsonValue;->setName(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez p1, :cond_0

    iput-object p2, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object p2, p0, Lcom/badlogic/gdx/utils/JsonReader;->root:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonReader;->root:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_2

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    iget p1, p1, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object p2, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/badlogic/gdx/utils/JsonReader;->lastChild:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/JsonValue;

    iput-object p2, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object p1, p2, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_1
    iget-object p1, p0, Lcom/badlogic/gdx/utils/JsonReader;->lastChild:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    iget p2, p1, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    :goto_2
    return-void
.end method

.method private static init__json_actions_0()[B
    .locals 1

    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
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
        0x1t
        0x8t
        0x2t
        0x0t
        0x7t
        0x2t
        0x0t
        0x8t
        0x2t
        0x1t
        0x3t
        0x2t
        0x1t
        0x5t
    .end array-data
.end method

.method private static init__json_eof_actions_0()[B
    .locals 1

    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static init__json_index_offsets_0()[S
    .locals 1

    const/16 v0, 0x27

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 2
        0x0s
        0x0s
        0xbs
        0xes
        0x10s
        0x13s
        0x1cs
        0x22s
        0x28s
        0x2bs
        0x36s
        0x3es
        0x46s
        0x4fs
        0x51s
        0x5as
        0x5ds
        0x60s
        0x69s
        0x6cs
        0x6fs
        0x71s
        0x74s
        0x77s
        0x82s
        0x8as
        0x92s
        0x9ds
        0x9fs
        0xaas
        0xads
        0xb0s
        0xbbs
        0xbes
        0xc1s
        0xc4s
        0xc9s
        0xces
        0xcfs
    .end array-data
.end method

.method private static init__json_indicies_0()[B
    .locals 1

    const/16 v0, 0xd1

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x2t
        0x3t
        0x4t
        0x3t
        0x5t
        0x3t
        0x6t
        0x1t
        0x0t
        0x7t
        0x7t
        0x3t
        0x8t
        0x3t
        0x9t
        0x9t
        0x3t
        0xbt
        0xbt
        0xct
        0xdt
        0xet
        0x3t
        0xft
        0xbt
        0xat
        0x10t
        0x10t
        0x11t
        0x12t
        0x10t
        0x3t
        0x13t
        0x13t
        0x14t
        0x15t
        0x13t
        0x3t
        0x16t
        0x16t
        0x3t
        0x15t
        0x15t
        0x18t
        0x3t
        0x19t
        0x3t
        0x1at
        0x3t
        0x1bt
        0x15t
        0x17t
        0x1ct
        0x1dt
        0x1ct
        0x1ct
        0x1et
        0x1ft
        0x20t
        0x3t
        0x21t
        0x22t
        0x21t
        0x21t
        0xdt
        0x23t
        0xft
        0x3t
        0x22t
        0x22t
        0xct
        0x24t
        0x25t
        0x3t
        0xft
        0x22t
        0xat
        0x10t
        0x3t
        0x24t
        0x24t
        0xct
        0x3t
        0x26t
        0x3t
        0x3t
        0x24t
        0xat
        0x27t
        0x27t
        0x3t
        0x28t
        0x28t
        0x3t
        0xdt
        0xdt
        0xct
        0x3t
        0x29t
        0x3t
        0xft
        0xdt
        0xat
        0x2at
        0x2at
        0x3t
        0x2bt
        0x2bt
        0x3t
        0x1ct
        0x3t
        0x2ct
        0x2ct
        0x3t
        0x2dt
        0x2dt
        0x3t
        0x2ft
        0x2ft
        0x30t
        0x31t
        0x32t
        0x3t
        0x33t
        0x34t
        0x35t
        0x2ft
        0x2et
        0x36t
        0x37t
        0x36t
        0x36t
        0x38t
        0x39t
        0x3at
        0x3t
        0x3bt
        0x3ct
        0x3bt
        0x3bt
        0x31t
        0x3dt
        0x34t
        0x3t
        0x3ct
        0x3ct
        0x30t
        0x3et
        0x3ft
        0x3t
        0x33t
        0x34t
        0x35t
        0x3ct
        0x2et
        0x36t
        0x3t
        0x3et
        0x3et
        0x30t
        0x3t
        0x40t
        0x3t
        0x33t
        0x3t
        0x35t
        0x3et
        0x2et
        0x41t
        0x41t
        0x3t
        0x42t
        0x42t
        0x3t
        0x31t
        0x31t
        0x30t
        0x3t
        0x43t
        0x3t
        0x33t
        0x34t
        0x35t
        0x31t
        0x2et
        0x44t
        0x44t
        0x3t
        0x45t
        0x45t
        0x3t
        0x46t
        0x46t
        0x3t
        0x8t
        0x8t
        0x47t
        0x8t
        0x3t
        0x48t
        0x48t
        0x49t
        0x48t
        0x3t
        0x3t
        0x3t
        0x0t
    .end array-data
.end method

.method private static init__json_key_offsets_0()[S
    .locals 1

    const/16 v0, 0x27

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 2
        0x0s
        0x0s
        0xbs
        0xds
        0xes
        0x10s
        0x19s
        0x1fs
        0x25s
        0x27s
        0x32s
        0x39s
        0x40s
        0x49s
        0x4as
        0x53s
        0x55s
        0x57s
        0x60s
        0x62s
        0x64s
        0x65s
        0x67s
        0x69s
        0x74s
        0x7bs
        0x82s
        0x8ds
        0x8es
        0x99s
        0x9bs
        0x9ds
        0xa8s
        0xaas
        0xacs
        0xaes
        0xb3s
        0xb8s
        0xb8s
    .end array-data
.end method

.method private static init__json_range_lengths_0()[B
    .locals 1

    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method private static init__json_single_lengths_0()[B
    .locals 1

    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x9t
        0x2t
        0x1t
        0x2t
        0x7t
        0x4t
        0x4t
        0x2t
        0x9t
        0x7t
        0x7t
        0x7t
        0x1t
        0x7t
        0x2t
        0x2t
        0x7t
        0x2t
        0x2t
        0x1t
        0x2t
        0x2t
        0x9t
        0x7t
        0x7t
        0x9t
        0x1t
        0x9t
        0x2t
        0x2t
        0x9t
        0x2t
        0x2t
        0x2t
        0x3t
        0x3t
        0x0t
        0x0t
    .end array-data
.end method

.method private static init__json_trans_actions_0()[B
    .locals 1

    const/16 v0, 0x4a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0xdt
        0x0t
        0xft
        0x0t
        0x0t
        0x7t
        0x3t
        0xbt
        0x1t
        0xbt
        0x11t
        0x0t
        0x14t
        0x0t
        0x0t
        0x5t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0xbt
        0xdt
        0xft
        0x0t
        0x7t
        0x3t
        0x1t
        0x1t
        0x1t
        0x1t
        0x17t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xbt
        0xbt
        0x0t
        0xbt
        0xbt
        0xbt
        0xbt
        0xdt
        0x0t
        0xft
        0x0t
        0x0t
        0x7t
        0x9t
        0x3t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1at
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xbt
        0xbt
        0x0t
        0xbt
        0xbt
        0xbt
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method private static init__json_trans_keys_0()[C
    .locals 1

    const/16 v0, 0xb9

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 2
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x9s
        0xas
        0x2as
        0x2fs
        0x22s
        0x2as
        0x2fs
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x7ds
        0x9s
        0xas
        0xds
        0x20s
        0x2fs
        0x3as
        0x9s
        0xas
        0xds
        0x20s
        0x2fs
        0x3as
        0x9s
        0xas
        0x2as
        0x2fs
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x9s
        0xas
        0x9s
        0xas
        0xds
        0x20s
        0x2cs
        0x2fs
        0x7ds
        0x9s
        0xas
        0xds
        0x20s
        0x2cs
        0x2fs
        0x7ds
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x7ds
        0x9s
        0xas
        0x22s
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x7ds
        0x9s
        0xas
        0x2as
        0x2fs
        0x2as
        0x2fs
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x7ds
        0x9s
        0xas
        0x2as
        0x2fs
        0x2as
        0x2fs
        0x22s
        0x2as
        0x2fs
        0x2as
        0x2fs
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x9s
        0xas
        0x9s
        0xas
        0xds
        0x20s
        0x2cs
        0x2fs
        0x5ds
        0x9s
        0xas
        0xds
        0x20s
        0x2cs
        0x2fs
        0x5ds
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x9s
        0xas
        0x22s
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x9s
        0xas
        0x2as
        0x2fs
        0x2as
        0x2fs
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x9s
        0xas
        0x2as
        0x2fs
        0x2as
        0x2fs
        0x2as
        0x2fs
        0xds
        0x20s
        0x2fs
        0x9s
        0xas
        0xds
        0x20s
        0x2fs
        0x9s
        0xas
        0x0s
    .end array-data
.end method

.method private static init__json_trans_targs_0()[B
    .locals 1

    const/16 v0, 0x4a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x23t
        0x1t
        0x3t
        0x0t
        0x4t
        0x24t
        0x24t
        0x24t
        0x24t
        0x1t
        0x6t
        0x5t
        0xdt
        0x11t
        0x16t
        0x25t
        0x7t
        0x8t
        0x9t
        0x7t
        0x8t
        0x9t
        0x7t
        0xat
        0x14t
        0x15t
        0xbt
        0xbt
        0xbt
        0xct
        0x11t
        0x13t
        0x25t
        0xbt
        0xct
        0x13t
        0xet
        0x10t
        0xft
        0xet
        0xct
        0x12t
        0x11t
        0xbt
        0x9t
        0x5t
        0x18t
        0x17t
        0x1bt
        0x1ft
        0x22t
        0x19t
        0x26t
        0x19t
        0x19t
        0x1at
        0x1ft
        0x21t
        0x26t
        0x19t
        0x1at
        0x21t
        0x1ct
        0x1et
        0x1dt
        0x1ct
        0x1at
        0x20t
        0x1ft
        0x19t
        0x17t
        0x2t
        0x24t
        0x2t
    .end array-data
.end method

.method private unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v2, v0, 0x10

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_9

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x5c

    if-eq v2, v4, :cond_0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move v2, v3

    goto :goto_0

    :cond_0
    if-ne v3, v0, :cond_1

    goto/16 :goto_2

    :cond_1
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x75

    if-ne v3, v5, :cond_2

    add-int/lit8 v3, v2, 0x4

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append([C)Lcom/badlogic/gdx/utils/StringBuilder;

    move v2, v3

    goto :goto_0

    :cond_2
    const/16 v5, 0x22

    if-eq v3, v5, :cond_8

    const/16 v5, 0x2f

    if-eq v3, v5, :cond_8

    if-eq v3, v4, :cond_8

    const/16 v4, 0x62

    if-eq v3, v4, :cond_7

    const/16 v4, 0x66

    if-eq v3, v4, :cond_6

    const/16 v4, 0x6e

    if-eq v3, v4, :cond_5

    const/16 v4, 0x72

    if-eq v3, v4, :cond_4

    const/16 v4, 0x74

    if-ne v3, v4, :cond_3

    const/16 v3, 0x9

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal escaped character: \\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/16 v3, 0xd

    goto :goto_1

    :cond_5
    const/16 v3, 0xa

    goto :goto_1

    :cond_6
    const/16 v3, 0xc

    goto :goto_1

    :cond_7
    const/16 v3, 0x8

    :cond_8
    :goto_1
    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_0

    :cond_9
    :goto_2
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected bool(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Z)V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V

    return-void
.end method

.method protected number(Ljava/lang/String;DLjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-direct {v0, p2, p3, p4}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(DLjava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V

    return-void
.end method

.method protected number(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-direct {v0, p2, p3, p4}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(JLjava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V

    return-void
.end method

.method public parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 4

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/files/FileHandle;->reader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/JsonValue;

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

.method public parse(Ljava/io/InputStream;)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/JsonValue;

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

.method public parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 5

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

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonReader;->parse([CII)Lcom/badlogic/gdx/utils/JsonValue;

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

.method public parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->parse([CII)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    return-object p1
.end method

.method public parse([CII)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    const/4 v0, 0x4

    new-array v4, v0, [I

    new-instance v5, Lcom/badlogic/gdx/utils/Array;

    const/16 v6, 0x8

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    const/4 v9, 0x1

    move/from16 v10, p2

    move-object v8, v4

    move v11, v9

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    if-eq v4, v0, :cond_32

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_23

    :pswitch_0
    move v4, v6

    goto/16 :goto_1b

    :pswitch_1
    if-ne v10, v3, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    if-nez v11, :cond_1

    const/4 v4, 0x5

    goto :goto_0

    :cond_1
    :pswitch_2
    :try_start_0
    sget-object v4, Lcom/badlogic/gdx/utils/JsonReader;->_json_key_offsets:[S

    aget-short v4, v4, v11

    sget-object v17, Lcom/badlogic/gdx/utils/JsonReader;->_json_index_offsets:[S

    aget-short v17, v17, v11

    sget-object v18, Lcom/badlogic/gdx/utils/JsonReader;->_json_single_lengths:[B

    aget-byte v18, v18, v11

    if-lez v18, :cond_5

    add-int v19, v4, v18

    add-int/lit8 v20, v19, -0x1

    move v7, v4

    move/from16 v0, v20

    :goto_1
    if-ge v0, v7, :cond_2

    add-int v17, v17, v18

    move/from16 v4, v19

    goto :goto_2

    :cond_2
    sub-int v21, v0, v7

    shr-int/lit8 v21, v21, 0x1

    add-int v21, v7, v21

    aget-char v9, v2, v10

    sget-object v22, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    move/from16 v23, v0

    aget-char v0, v22, v21

    if-ge v9, v0, :cond_3

    add-int/lit8 v0, v21, -0x1

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    aget-char v0, v2, v10

    sget-object v7, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    aget-char v7, v7, v21

    if-le v0, v7, :cond_4

    add-int/lit8 v7, v21, 0x1

    move/from16 v0, v23

    const/4 v9, 0x1

    goto :goto_1

    :cond_4
    sub-int v21, v21, v4

    add-int v17, v17, v21

    goto :goto_4

    :cond_5
    :goto_2
    sget-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_range_lengths:[B

    aget-byte v0, v0, v11

    if-lez v0, :cond_9

    shl-int/lit8 v7, v0, 0x1

    add-int/2addr v7, v4

    const/4 v9, 0x2

    sub-int/2addr v7, v9

    move v9, v4

    :goto_3
    if-ge v7, v9, :cond_6

    add-int v17, v17, v0

    goto :goto_4

    :cond_6
    sub-int v11, v7, v9

    const/16 v18, 0x1

    shr-int/lit8 v11, v11, 0x1

    and-int/lit8 v11, v11, -0x2

    add-int/2addr v11, v9

    move/from16 v18, v0

    aget-char v0, v2, v10

    sget-object v19, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    move/from16 v21, v7

    aget-char v7, v19, v11

    if-ge v0, v7, :cond_7

    add-int/lit8 v7, v11, -0x2

    move/from16 v0, v18

    goto :goto_3

    :cond_7
    aget-char v0, v2, v10

    sget-object v7, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    add-int/lit8 v9, v11, 0x1

    aget-char v7, v7, v9

    if-le v0, v7, :cond_8

    add-int/lit8 v9, v11, 0x2

    move/from16 v0, v18

    move/from16 v7, v21

    goto :goto_3

    :cond_8
    sub-int/2addr v11, v4

    const/4 v4, 0x1

    shr-int/lit8 v0, v11, 0x1

    add-int v17, v17, v0

    :cond_9
    :goto_4
    sget-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_indicies:[B

    aget-byte v0, v0, v17

    sget-object v4, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_targs:[B

    aget-byte v4, v4, v0

    sget-object v7, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_actions:[B

    aget-byte v7, v7, v0

    if-eqz v7, :cond_30

    sget-object v7, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_actions:[B

    aget-byte v0, v7, v0

    sget-object v7, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    add-int/lit8 v9, v0, 0x1

    aget-byte v0, v7, v0

    :goto_5
    add-int/lit8 v7, v0, -0x1

    if-lez v0, :cond_2f

    sget-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    add-int/lit8 v11, v9, 0x1

    aget-byte v0, v0, v9
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    packed-switch v0, :pswitch_data_1

    move/from16 v19, v4

    move v4, v6

    move/from16 v17, v7

    goto/16 :goto_1a

    :pswitch_3
    add-int/lit8 v10, v10, 0x1

    move v9, v10

    const/4 v0, 0x0

    :cond_a
    :try_start_1
    aget-char v12, v2, v9
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v13, 0x22

    if-eq v12, v13, :cond_c

    const/16 v13, 0x5c

    if-eq v12, v13, :cond_b

    const/4 v12, 0x1

    goto :goto_6

    :cond_b
    add-int/lit8 v9, v9, 0x1

    const/4 v0, 0x1

    const/4 v12, 0x1

    :goto_6
    add-int/2addr v9, v12

    if-ne v9, v3, :cond_a

    move v13, v0

    goto :goto_7

    :cond_c
    move v13, v0

    :goto_7
    add-int/lit8 v0, v9, -0x1

    move/from16 v19, v4

    move v4, v6

    move/from16 v17, v7

    move v12, v10

    move v10, v0

    goto/16 :goto_1a

    :pswitch_4
    const/16 v0, 0xd

    if-eqz v14, :cond_12

    move v12, v10

    const/4 v13, 0x0

    :cond_d
    :try_start_2
    aget-char v15, v2, v12

    const/16 v9, 0xa

    if-eq v15, v9, :cond_18

    if-eq v15, v0, :cond_18

    const/16 v9, 0x2f

    if-eq v15, v9, :cond_f

    const/16 v9, 0x3a

    if-eq v15, v9, :cond_18

    const/16 v9, 0x5c

    if-eq v15, v9, :cond_e

    goto :goto_8

    :cond_e
    const/4 v13, 0x1

    goto :goto_8

    :cond_f
    const/16 v9, 0x5c

    add-int/lit8 v15, v12, 0x1

    if-ne v15, v3, :cond_10

    goto :goto_8

    :cond_10
    aget-char v15, v2, v15
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v9, 0x2f

    if-eq v15, v9, :cond_18

    const/16 v9, 0x2a

    if-ne v15, v9, :cond_11

    goto :goto_b

    :cond_11
    :goto_8
    add-int/lit8 v12, v12, 0x1

    if-ne v12, v3, :cond_d

    goto :goto_b

    :catch_0
    move-exception v0

    move-object v7, v0

    move v10, v12

    goto/16 :goto_24

    :cond_12
    move v9, v10

    const/4 v12, 0x0

    :cond_13
    :try_start_3
    aget-char v13, v2, v9

    const/16 v15, 0xa

    if-eq v13, v15, :cond_17

    if-eq v13, v0, :cond_17

    const/16 v15, 0x2c

    if-eq v13, v15, :cond_17

    const/16 v15, 0x2f

    if-eq v13, v15, :cond_14

    const/16 v15, 0x7d

    if-eq v13, v15, :cond_17

    packed-switch v13, :pswitch_data_2

    goto :goto_9

    :pswitch_5
    const/4 v12, 0x1

    goto :goto_9

    :cond_14
    add-int/lit8 v13, v9, 0x1

    if-ne v13, v3, :cond_15

    goto :goto_9

    :cond_15
    aget-char v13, v2, v13
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    const/16 v15, 0x2f

    if-eq v13, v15, :cond_17

    const/16 v15, 0x2a

    if-ne v13, v15, :cond_16

    goto :goto_a

    :cond_16
    :goto_9
    add-int/lit8 v9, v9, 0x1

    if-ne v9, v3, :cond_13

    move v13, v12

    move v12, v9

    goto :goto_b

    :cond_17
    :goto_a
    :pswitch_6
    move v13, v12

    move v12, v9

    :cond_18
    :goto_b
    add-int/lit8 v12, v12, -0x1

    :goto_c
    :try_start_4
    aget-char v0, v2, v12
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    const/16 v9, 0x20

    if-ne v0, v9, :cond_19

    add-int/lit8 v12, v12, -0x1

    goto :goto_c

    :cond_19
    move/from16 v19, v4

    move v4, v6

    move/from16 v17, v7

    const/4 v15, 0x1

    move/from16 v24, v12

    move v12, v10

    move/from16 v10, v24

    goto/16 :goto_1a

    :pswitch_7
    add-int/lit8 v9, v10, 0x1

    :try_start_5
    aget-char v0, v2, v10
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    const/16 v10, 0x2f

    if-ne v0, v10, :cond_1b

    move v10, v9

    :goto_d
    if-eq v10, v3, :cond_1a

    :try_start_6
    aget-char v0, v2, v10

    const/16 v9, 0xa

    if-eq v0, v9, :cond_1a

    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    :cond_1a
    add-int/lit8 v10, v10, -0x1

    move/from16 v17, v7

    goto :goto_11

    :cond_1b
    move v10, v9

    :goto_e
    add-int/lit8 v0, v10, 0x1

    if-ge v0, v3, :cond_1d

    aget-char v9, v2, v10

    move/from16 v17, v7

    const/16 v7, 0x2a

    if-ne v9, v7, :cond_1c

    goto :goto_f

    :cond_1c
    const/16 v10, 0x2f

    goto :goto_10

    :cond_1d
    move/from16 v17, v7

    const/16 v7, 0x2a

    :goto_f
    aget-char v9, v2, v0

    const/16 v10, 0x2f

    if-eq v9, v10, :cond_1e

    :goto_10
    move v10, v0

    move/from16 v7, v17

    goto :goto_e

    :cond_1e
    move v10, v0

    :goto_11
    move/from16 v19, v4

    move v4, v6

    goto/16 :goto_1a

    :catch_1
    move-exception v0

    move-object v7, v0

    move v10, v9

    goto/16 :goto_24

    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/JsonReader;->pop()V

    add-int/lit8 v6, v6, -0x1

    aget v11, v8, v6

    const/4 v0, 0x4

    const/4 v4, 0x2

    const/4 v9, 0x1

    goto/16 :goto_0

    :pswitch_9
    iget v0, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_1f

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    goto :goto_12

    :cond_1f
    const/4 v7, 0x0

    :goto_12
    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/utils/JsonReader;->startArray(Ljava/lang/String;)V

    array-length v0, v8

    if-ne v6, v0, :cond_20

    array-length v0, v8

    const/4 v7, 0x2

    mul-int/2addr v0, v7

    new-array v0, v0, [I

    array-length v7, v8

    const/4 v9, 0x0

    invoke-static {v8, v9, v0, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v0

    :cond_20
    add-int/lit8 v0, v6, 0x1

    aput v4, v8, v6

    const/16 v11, 0x17

    move v6, v0

    const/4 v0, 0x4

    const/4 v4, 0x2

    const/4 v9, 0x1

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/JsonReader;->pop()V

    add-int/lit8 v6, v6, -0x1

    aget v11, v8, v6

    const/4 v0, 0x4

    const/4 v4, 0x2

    const/4 v9, 0x1

    goto/16 :goto_0

    :pswitch_b
    iget v0, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_21

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    goto :goto_13

    :cond_21
    const/4 v7, 0x0

    :goto_13
    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/utils/JsonReader;->startObject(Ljava/lang/String;)V

    array-length v0, v8

    if-ne v6, v0, :cond_22

    array-length v0, v8

    const/4 v7, 0x2

    mul-int/2addr v0, v7

    new-array v0, v0, [I

    array-length v9, v8

    const/4 v11, 0x0

    invoke-static {v8, v11, v0, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v0

    goto :goto_14

    :cond_22
    const/4 v7, 0x2

    :goto_14
    add-int/lit8 v0, v6, 0x1

    aput v4, v8, v6

    move v6, v0

    move v4, v7

    const/4 v0, 0x4

    const/4 v9, 0x1

    const/4 v11, 0x5

    goto/16 :goto_0

    :pswitch_c
    move/from16 v17, v7

    const/4 v7, 0x2

    new-instance v0, Ljava/lang/String;

    sub-int v9, v10, v12

    invoke-direct {v0, v2, v12, v9}, Ljava/lang/String;-><init>([CII)V

    if-eqz v13, :cond_23

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_23
    if-eqz v14, :cond_24

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    move/from16 v19, v4

    move v4, v6

    const/4 v9, 0x0

    goto/16 :goto_19

    :cond_24
    iget v9, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v9, :cond_25

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_15

    :cond_25
    const/4 v9, 0x0

    :goto_15
    if-eqz v15, :cond_2d

    const-string v15, "true"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_26

    const/4 v12, 0x1

    invoke-virtual {v1, v9, v12}, Lcom/badlogic/gdx/utils/JsonReader;->bool(Ljava/lang/String;Z)V

    move/from16 v19, v4

    move v4, v6

    goto/16 :goto_18

    :cond_26
    const-string v15, "false"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_27

    const/4 v12, 0x0

    invoke-virtual {v1, v9, v12}, Lcom/badlogic/gdx/utils/JsonReader;->bool(Ljava/lang/String;Z)V

    move/from16 v19, v4

    move v4, v6

    goto :goto_18

    :cond_27
    const-string v15, "null"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_28

    const/4 v15, 0x0

    invoke-virtual {v1, v9, v15}, Lcom/badlogic/gdx/utils/JsonReader;->string(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v19, v4

    move v4, v6

    goto :goto_18

    :cond_28
    const/4 v15, 0x0

    const/16 v16, 0x1

    :goto_16
    if-ge v12, v10, :cond_2b

    aget-char v7, v2, v12
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3

    move/from16 v19, v4

    const/16 v4, 0x2b

    if-eq v7, v4, :cond_2a

    const/16 v4, 0x45

    if-eq v7, v4, :cond_29

    const/16 v4, 0x65

    if-eq v7, v4, :cond_29

    packed-switch v7, :pswitch_data_3

    packed-switch v7, :pswitch_data_4

    const/4 v15, 0x0

    const/16 v16, 0x0

    goto :goto_17

    :cond_29
    :pswitch_d
    const/4 v15, 0x1

    const/16 v16, 0x0

    :cond_2a
    :pswitch_e
    add-int/lit8 v12, v12, 0x1

    move/from16 v4, v19

    const/4 v7, 0x2

    goto :goto_16

    :cond_2b
    move/from16 v19, v4

    :goto_17
    if-eqz v15, :cond_2c

    move v4, v6

    :try_start_7
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v1, v9, v6, v7, v0}, Lcom/badlogic/gdx/utils/JsonReader;->number(Ljava/lang/String;DLjava/lang/String;)V

    goto :goto_18

    :cond_2c
    move v4, v6

    if-eqz v16, :cond_2e

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v1, v9, v6, v7, v0}, Lcom/badlogic/gdx/utils/JsonReader;->number(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_18

    :cond_2d
    move/from16 v19, v4

    move v4, v6

    :catch_2
    :cond_2e
    :try_start_8
    invoke-virtual {v1, v9, v0}, Lcom/badlogic/gdx/utils/JsonReader;->string(Ljava/lang/String;Ljava/lang/String;)V

    :goto_18
    move v9, v14

    :goto_19
    move v14, v9

    move v12, v10

    const/4 v15, 0x0

    goto :goto_1a

    :pswitch_f
    move/from16 v19, v4

    move v4, v6

    move/from16 v17, v7

    const/4 v14, 0x1

    :goto_1a
    move v6, v4

    move v9, v11

    move/from16 v0, v17

    move/from16 v4, v19

    goto/16 :goto_5

    :cond_2f
    move/from16 v19, v4

    move v4, v6

    move/from16 v11, v19

    goto :goto_1b

    :cond_30
    move/from16 v19, v4

    move v4, v6

    move/from16 v11, v19

    :goto_1b
    if-nez v11, :cond_31

    move v6, v4

    const/4 v0, 0x4

    const/4 v4, 0x5

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_31
    add-int/lit8 v10, v10, 0x1

    if-eq v10, v3, :cond_32

    move v6, v4

    const/4 v0, 0x4

    const/4 v4, 0x1

    const/4 v9, 0x1

    goto/16 :goto_0

    :catch_3
    move-exception v0

    move-object v7, v0

    goto/16 :goto_24

    :cond_32
    if-ne v10, v3, :cond_41

    sget-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_eof_actions:[B

    aget-byte v0, v0, v11

    sget-object v4, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v4, v0

    move v8, v14

    :goto_1c
    add-int/lit8 v4, v0, -0x1

    if-lez v0, :cond_41

    sget-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v0, v0, v6

    const/4 v6, 0x1

    if-eq v0, v6, :cond_33

    const/16 v11, 0x65

    goto/16 :goto_22

    :cond_33
    new-instance v0, Ljava/lang/String;

    sub-int v6, v10, v12

    invoke-direct {v0, v2, v12, v6}, Ljava/lang/String;-><init>([CII)V

    if-eqz v13, :cond_34

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_34
    if-eqz v8, :cond_35

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const/4 v8, 0x0

    const/16 v11, 0x65

    goto/16 :goto_21

    :cond_35
    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v6, :cond_36

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_1d

    :cond_36
    const/4 v6, 0x0

    :goto_1d
    if-eqz v15, :cond_3f

    const-string v9, "true"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_37

    const/4 v9, 0x1

    invoke-virtual {v1, v6, v9}, Lcom/badlogic/gdx/utils/JsonReader;->bool(Ljava/lang/String;Z)V

    const/16 v11, 0x65

    goto :goto_21

    :cond_37
    const/4 v9, 0x1

    const-string v11, "false"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_38

    const/4 v11, 0x0

    invoke-virtual {v1, v6, v11}, Lcom/badlogic/gdx/utils/JsonReader;->bool(Ljava/lang/String;Z)V

    const/16 v11, 0x65

    goto :goto_21

    :cond_38
    const/4 v11, 0x0

    const-string v14, "null"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_39

    const/4 v14, 0x0

    invoke-virtual {v1, v6, v14}, Lcom/badlogic/gdx/utils/JsonReader;->string(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x65

    goto :goto_21

    :cond_39
    move v15, v9

    move v14, v11

    :goto_1e
    if-ge v12, v10, :cond_3d

    aget-char v9, v2, v12
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3

    const/16 v11, 0x2b

    if-eq v9, v11, :cond_3c

    const/16 v11, 0x45

    if-eq v9, v11, :cond_3a

    const/16 v11, 0x65

    if-eq v9, v11, :cond_3b

    packed-switch v9, :pswitch_data_5

    packed-switch v9, :pswitch_data_6

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto :goto_20

    :cond_3a
    const/16 v11, 0x65

    :cond_3b
    :pswitch_10
    const/4 v14, 0x1

    const/4 v15, 0x0

    goto :goto_1f

    :cond_3c
    const/16 v11, 0x65

    :goto_1f
    :pswitch_11
    add-int/lit8 v12, v12, 0x1

    const/4 v9, 0x1

    const/4 v11, 0x0

    goto :goto_1e

    :cond_3d
    const/16 v11, 0x65

    :goto_20
    if-eqz v14, :cond_3e

    :try_start_9
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    invoke-virtual {v1, v6, v14, v15, v0}, Lcom/badlogic/gdx/utils/JsonReader;->number(Ljava/lang/String;DLjava/lang/String;)V

    goto :goto_21

    :cond_3e
    if-eqz v15, :cond_40

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v1, v6, v14, v15, v0}, Lcom/badlogic/gdx/utils/JsonReader;->number(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_21

    :cond_3f
    const/16 v11, 0x65

    :catch_4
    :cond_40
    :try_start_a
    invoke-virtual {v1, v6, v0}, Lcom/badlogic/gdx/utils/JsonReader;->string(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_3

    :goto_21
    move v12, v10

    const/4 v15, 0x0

    :goto_22
    move v0, v4

    move v6, v7

    goto/16 :goto_1c

    :cond_41
    :goto_23
    const/4 v7, 0x0

    :goto_24
    iget-object v0, v1, Lcom/badlogic/gdx/utils/JsonReader;->root:Lcom/badlogic/gdx/utils/JsonValue;

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/badlogic/gdx/utils/JsonReader;->root:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v4, v1, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v4, v1, Lcom/badlogic/gdx/utils/JsonReader;->lastChild:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->clear()V

    if-ge v10, v3, :cond_44

    const/4 v0, 0x0

    const/4 v4, 0x1

    :goto_25
    if-ge v0, v10, :cond_43

    aget-char v5, v2, v0

    const/16 v6, 0xa

    if-ne v5, v6, :cond_42

    add-int/lit8 v4, v4, 0x1

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_43
    new-instance v0, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error parsing JSON on line "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " near: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    const/16 v6, 0x100

    sub-int/2addr v3, v10

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {v4, v2, v10, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v7}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_44
    iget-object v3, v1, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v3, :cond_46

    iget-object v0, v1, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v2, v1, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v0

    if-eqz v0, :cond_45

    new-instance v0, Lcom/badlogic/gdx/utils/SerializationException;

    const-string v2, "Error parsing JSON, unmatched brace."

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    new-instance v0, Lcom/badlogic/gdx/utils/SerializationException;

    const-string v2, "Error parsing JSON, unmatched bracket."

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    if-nez v7, :cond_47

    return-object v0

    :cond_47
    new-instance v0, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing JSON: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v7}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_f
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5c
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2d
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x30
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2d
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x30
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method protected pop()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->root:Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    iget v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->lastChild:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    return-void
.end method

.method protected startArray(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Lcom/badlogic/gdx/utils/JsonValue$ValueType;)V

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    return-void
.end method

.method protected startObject(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->object:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Lcom/badlogic/gdx/utils/JsonValue$ValueType;)V

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    return-void
.end method

.method protected string(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V

    return-void
.end method
