.class public final Lcom/badlogic/gdx/utils/PropertiesUtils;
.super Ljava/lang/Object;
.source "PropertiesUtils.java"


# static fields
.field private static final CONTINUE:I = 0x3

.field private static final IGNORE:I = 0x5

.field private static final KEY_DONE:I = 0x4

.field private static final LINE_SEPARATOR:Ljava/lang/String; = "\n"

.field private static final NONE:I = 0x0

.field private static final SLASH:I = 0x1

.field private static final UNICODE:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dumpString(Lcom/badlogic/gdx/utils/StringBuilder;Ljava/lang/String;ZZ)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_8

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3d

    const/16 v5, 0x5c

    if-le v3, v4, :cond_1

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_1

    if-ne v3, v5, :cond_0

    const-string v3, "\\\\"

    goto :goto_1

    :cond_0
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    :goto_1
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_5

    :cond_1
    sparse-switch v3, :sswitch_data_0

    const/16 v4, 0x20

    if-lt v3, v4, :cond_4

    const/16 v4, 0x7e

    if-le v3, v4, :cond_3

    goto :goto_2

    :sswitch_0
    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_5

    :sswitch_1
    if-eqz v2, :cond_2

    if-eqz p2, :cond_7

    :cond_2
    const-string v3, "\\ "

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_5

    :sswitch_2
    const-string v3, "\\r"

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_5

    :sswitch_3
    const-string v3, "\\f"

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_5

    :sswitch_4
    const-string v3, "\\n"

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_5

    :sswitch_5
    const-string v3, "\\t"

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_5

    :cond_3
    move v4, v1

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x1

    :goto_3
    and-int/2addr v4, p3

    if-eqz v4, :cond_6

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\u"

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move v4, v1

    :goto_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    rsub-int/lit8 v5, v5, 0x4

    if-ge v4, v5, :cond_5

    const/16 v5, 0x30

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_5

    :cond_6
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_7
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    return-void

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_5
        0xa -> :sswitch_4
        0xc -> :sswitch_3
        0xd -> :sswitch_2
        0x20 -> :sswitch_1
        0x21 -> :sswitch_0
        0x23 -> :sswitch_0
        0x3a -> :sswitch_0
        0x3d -> :sswitch_0
    .end sparse-switch
.end method

.method public static load(Lcom/badlogic/gdx/utils/ObjectMap;Ljava/io/Reader;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/Reader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v0, :cond_2a

    if-eqz v1, :cond_29

    const/16 v2, 0x28

    new-array v2, v2, [C

    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v4, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v10, v2

    move v15, v7

    move v14, v8

    move v2, v9

    move v11, v2

    move v12, v11

    move v13, v12

    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->read()I

    move-result v5

    if-ne v5, v8, :cond_5

    if-ne v11, v4, :cond_1

    if-le v12, v6, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Unicode sequence: expected format \\uxxxx"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    if-ne v14, v8, :cond_2

    if-lez v2, :cond_2

    move v14, v2

    :cond_2
    if-ltz v14, :cond_4

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v10, v9, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v9, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    if-ne v11, v7, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u0000"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void

    :cond_5
    int-to-char v5, v5

    array-length v1, v10

    if-ne v2, v1, :cond_6

    array-length v1, v10

    mul-int/2addr v1, v4

    new-array v1, v1, [C

    invoke-static {v10, v9, v1, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v10, v1

    :cond_6
    const/16 v1, 0xa

    if-ne v11, v4, :cond_b

    const/16 v4, 0x10

    invoke-static {v5, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    if-ltz v4, :cond_7

    shl-int/lit8 v13, v13, 0x4

    add-int/2addr v13, v4

    add-int/lit8 v12, v12, 0x1

    if-ge v12, v6, :cond_8

    const/4 v4, 0x2

    goto :goto_0

    :cond_7
    if-le v12, v6, :cond_a

    :cond_8
    add-int/lit8 v4, v2, 0x1

    int-to-char v11, v13

    aput-char v11, v10, v2

    if-eq v5, v1, :cond_9

    move v2, v4

    move v11, v9

    const/4 v4, 0x2

    goto :goto_0

    :cond_9
    move v2, v4

    move v11, v9

    goto :goto_2

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Unicode sequence: illegal character"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_2
    const/16 v4, 0xd

    if-ne v11, v7, :cond_12

    if-eq v5, v1, :cond_11

    if-eq v5, v4, :cond_10

    const/16 v11, 0x62

    if-eq v5, v11, :cond_f

    const/16 v11, 0x66

    if-eq v5, v11, :cond_e

    const/16 v11, 0x6e

    if-eq v5, v11, :cond_d

    const/16 v1, 0x72

    if-eq v5, v1, :cond_c

    packed-switch v5, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    move v12, v9

    move v13, v12

    const/4 v4, 0x2

    const/4 v11, 0x2

    goto/16 :goto_0

    :pswitch_1
    const/16 v5, 0x9

    goto :goto_3

    :cond_c
    move v5, v4

    goto :goto_3

    :cond_d
    move v5, v1

    goto :goto_3

    :cond_e
    const/16 v5, 0xc

    goto :goto_3

    :cond_f
    const/16 v5, 0x8

    :goto_3
    move v11, v9

    const/4 v1, 0x5

    goto/16 :goto_7

    :cond_10
    const/4 v4, 0x2

    const/4 v11, 0x3

    goto/16 :goto_0

    :cond_11
    const/4 v4, 0x2

    const/4 v11, 0x5

    goto/16 :goto_0

    :cond_12
    if-eq v5, v1, :cond_24

    if-eq v5, v4, :cond_23

    const/16 v7, 0x21

    if-eq v5, v7, :cond_16

    const/16 v7, 0x23

    if-eq v5, v7, :cond_16

    const/16 v1, 0x3a

    if-eq v5, v1, :cond_15

    const/16 v1, 0x3d

    if-eq v5, v1, :cond_15

    const/16 v1, 0x5c

    if-eq v5, v1, :cond_13

    goto :goto_5

    :cond_13
    if-ne v11, v6, :cond_14

    move v14, v2

    :cond_14
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_15
    if-ne v14, v8, :cond_19

    move v14, v2

    move v11, v9

    const/4 v4, 0x2

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_16
    if-eqz v15, :cond_19

    :cond_17
    invoke-virtual {v3}, Ljava/io/BufferedReader;->read()I

    move-result v5

    if-ne v5, v8, :cond_18

    goto :goto_4

    :cond_18
    int-to-char v5, v5

    if-eq v5, v4, :cond_1d

    if-ne v5, v1, :cond_17

    :goto_4
    goto :goto_6

    :cond_19
    :goto_5
    invoke-static {v5}, Ljava/lang/Character;->isSpace(C)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x3

    if-ne v11, v1, :cond_1a

    const/4 v11, 0x5

    :cond_1a
    if-eqz v2, :cond_1c

    if-eq v2, v14, :cond_1c

    const/4 v1, 0x5

    if-ne v11, v1, :cond_1b

    goto :goto_6

    :cond_1b
    if-ne v14, v8, :cond_1f

    move v11, v6

    const/4 v4, 0x2

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_1c
    const/4 v1, 0x5

    :cond_1d
    :goto_6
    const/4 v4, 0x2

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_1e
    const/4 v1, 0x5

    :cond_1f
    if-eq v11, v1, :cond_20

    const/4 v4, 0x3

    if-ne v11, v4, :cond_21

    :cond_20
    move v11, v9

    :cond_21
    :goto_7
    if-ne v11, v6, :cond_22

    move v14, v2

    move v11, v9

    :cond_22
    add-int/lit8 v4, v2, 0x1

    aput-char v5, v10, v2

    move v2, v4

    move v15, v9

    const/4 v4, 0x2

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_23
    const/4 v1, 0x5

    const/4 v4, 0x3

    goto :goto_8

    :cond_24
    const/4 v1, 0x5

    const/4 v4, 0x3

    if-ne v11, v4, :cond_25

    move v11, v1

    const/4 v4, 0x2

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_25
    :goto_8
    if-gtz v2, :cond_26

    if-nez v2, :cond_28

    if-nez v14, :cond_28

    :cond_26
    if-ne v14, v8, :cond_27

    move v14, v2

    :cond_27
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v10, v9, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5, v9, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    move v14, v8

    move v2, v9

    move v11, v2

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v15, 0x1

    goto/16 :goto_0

    :cond_29
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Reader cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ObjectMap cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x74
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static store(Lcom/badlogic/gdx/utils/ObjectMap;Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/Writer;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/PropertiesUtils;->storeImpl(Lcom/badlogic/gdx/utils/ObjectMap;Ljava/io/Writer;Ljava/lang/String;Z)V

    return-void
.end method

.method private static storeImpl(Lcom/badlogic/gdx/utils/ObjectMap;Ljava/io/Writer;Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/Writer;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-static {p1, p2}, Lcom/badlogic/gdx/utils/PropertiesUtils;->writeComment(Ljava/io/Writer;Ljava/lang/String;)V

    :cond_0
    const-string p2, "#"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    new-instance p2, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v0, 0xc8

    invoke-direct {p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object p0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    iget-object v1, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p2, v1, v2, p3}, Lcom/badlogic/gdx/utils/PropertiesUtils;->dumpString(Lcom/badlogic/gdx/utils/StringBuilder;Ljava/lang/String;ZZ)V

    const/16 v1, 0x3d

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, v0, v1, p3}, Lcom/badlogic/gdx/utils/PropertiesUtils;->dumpString(Lcom/badlogic/gdx/utils/StringBuilder;Ljava/lang/String;ZZ)V

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method private static writeComment(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_8

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xd

    const/16 v6, 0xa

    const/16 v7, 0xff

    if-gt v4, v7, :cond_0

    if-eq v4, v6, :cond_0

    if-ne v4, v5, :cond_7

    :cond_0
    if-eq v3, v2, :cond_1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_1
    if-le v4, v7, :cond_3

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\u"

    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move v4, v1

    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    rsub-int/lit8 v5, v5, 0x4

    if-ge v4, v5, :cond_2

    const/16 v5, 0x30

    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v3, "\n"

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-ne v4, v5, :cond_4

    add-int/lit8 v3, v0, -0x1

    if-eq v2, v3, :cond_4

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_4

    move v2, v3

    :cond_4
    add-int/lit8 v3, v0, -0x1

    if-eq v2, v3, :cond_5

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x23

    if-eq v4, v5, :cond_6

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x21

    if-eq v3, v4, :cond_6

    :cond_5
    const-string v3, "#"

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_6
    :goto_2
    add-int/lit8 v3, v2, 0x1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    if-eq v3, v2, :cond_9

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_9
    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method
