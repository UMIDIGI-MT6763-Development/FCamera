.class Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;
.super Ljava/io/FilterOutputStream;


# instance fields
.field private final a:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;->a:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public setByteOrder(Ljava/nio/ByteOrder;)Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public writeInt(I)Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;->out:Ljava/io/OutputStream;

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-object p0
.end method

.method public writeRational(Lorg/lasque/tusdk/core/exif/Rational;)Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;
    .locals 2

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/Rational;->getNumerator()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;->writeInt(I)Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/Rational;->getDenominator()J

    move-result-wide v0

    long-to-int p1, v0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;->writeInt(I)Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;

    return-object p0
.end method

.method public writeShort(S)Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;->out:Ljava/io/OutputStream;

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    return-object p0
.end method
