.class final Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;
.super Ljava/lang/Object;
.source "XMLEntityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/XMLEntityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CharacterBuffer"
.end annotation


# instance fields
.field private final ch:[C

.field private final isExternal:Z


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;->isExternal:Z

    new-array p1, p2, [C

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;->ch:[C

    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;)[C
    .locals 0

    iget-object p0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;->ch:[C

    return-object p0
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;)Z
    .locals 0

    iget-boolean p0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;->isExternal:Z

    return p0
.end method
