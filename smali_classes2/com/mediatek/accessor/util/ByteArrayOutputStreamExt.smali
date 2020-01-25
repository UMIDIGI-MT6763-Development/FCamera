.class public Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;
.super Ljava/io/ByteArrayOutputStream;
.source "ByteArrayOutputStreamExt.java"


# static fields
.field private static final BIT_SHIFT_COUNT_16:I = 0x10

.field private static final BIT_SHIFT_COUNT_24:I = 0x18

.field private static final BIT_SHIFT_COUNT_8:I = 0x8

.field private static final BYTE_MASK_FF:I = 0xff


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final writeInt(I)V
    .locals 3

    shr-int/lit8 v0, p1, 0x18

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, v0}, Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;->write(I)V

    invoke-virtual {p0, v1}, Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;->write(I)V

    invoke-virtual {p0, v2}, Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;->write(I)V

    invoke-virtual {p0, p1}, Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;->write(I)V

    return-void
.end method

.method public final writeShort(I)V
    .locals 1

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, v0}, Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;->write(I)V

    invoke-virtual {p0, p1}, Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;->write(I)V

    return-void
.end method
