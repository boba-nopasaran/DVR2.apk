.class public Lorg/jsoup/parser/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# static fields
.field private static final DEFAULT_MAX_ERRORS:I


# instance fields
.field private errors:Lorg/jsoup/parser/ParseErrorList;

.field private maxErrors:I

.field private treeBuilder:Lorg/jsoup/parser/TreeBuilder;


# direct methods
.method public constructor <init>(Lorg/jsoup/parser/TreeBuilder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/jsoup/parser/Parser;->maxErrors:I

    iput-object p1, p0, Lorg/jsoup/parser/Parser;->treeBuilder:Lorg/jsoup/parser/TreeBuilder;

    return-void
.end method

.method public static htmlParser()Lorg/jsoup/parser/Parser;
    .locals 2

    new-instance v0, Lorg/jsoup/parser/Parser;

    new-instance v1, Lorg/jsoup/parser/HtmlTreeBuilder;

    invoke-direct {v1}, Lorg/jsoup/parser/HtmlTreeBuilder;-><init>()V

    invoke-direct {v0, v1}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 2

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilder;

    invoke-direct {v0}, Lorg/jsoup/parser/HtmlTreeBuilder;-><init>()V

    invoke-static {}, Lorg/jsoup/parser/ParseErrorList;->noTracking()Lorg/jsoup/parser/ParseErrorList;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lorg/jsoup/parser/TreeBuilder;->parse(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;)Lorg/jsoup/nodes/Document;

    move-result-object v1

    return-object v1
.end method

.method public static parseBodyFragment(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 8

    invoke-static {p1}, Lorg/jsoup/nodes/Document;->createShell(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lorg/jsoup/parser/Parser;->parseFragment(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lorg/jsoup/nodes/Node;

    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/jsoup/nodes/Node;

    array-length v6, v5

    add-int/lit8 v2, v6, -0x1

    :goto_0
    if-lez v2, :cond_0

    aget-object v6, v5, v2

    invoke-virtual {v6}, Lorg/jsoup/nodes/Node;->remove()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    array-length v7, v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_1

    aget-object v3, v5, v6

    invoke-virtual {v0, v3}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public static parseBodyFragmentRelaxed(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1

    invoke-static {p0, p1}, Lorg/jsoup/parser/Parser;->parse(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static parseFragment(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jsoup/nodes/Element;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilder;

    invoke-direct {v0}, Lorg/jsoup/parser/HtmlTreeBuilder;-><init>()V

    invoke-static {}, Lorg/jsoup/parser/ParseErrorList;->noTracking()Lorg/jsoup/parser/ParseErrorList;

    move-result-object v1

    invoke-virtual {v0, p0, p1, p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->parseFragment(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static parseXmlFragment(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/jsoup/parser/XmlTreeBuilder;

    invoke-direct {v0}, Lorg/jsoup/parser/XmlTreeBuilder;-><init>()V

    invoke-static {}, Lorg/jsoup/parser/ParseErrorList;->noTracking()Lorg/jsoup/parser/ParseErrorList;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lorg/jsoup/parser/XmlTreeBuilder;->parseFragment(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static unescapeEntities(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/jsoup/parser/Tokeniser;

    new-instance v1, Lorg/jsoup/parser/CharacterReader;

    invoke-direct {v1, p0}, Lorg/jsoup/parser/CharacterReader;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/jsoup/parser/ParseErrorList;->noTracking()Lorg/jsoup/parser/ParseErrorList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/Tokeniser;-><init>(Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/ParseErrorList;)V

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/Tokeniser;->unescapeEntities(Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static xmlParser()Lorg/jsoup/parser/Parser;
    .locals 2

    new-instance v0, Lorg/jsoup/parser/Parser;

    new-instance v1, Lorg/jsoup/parser/XmlTreeBuilder;

    invoke-direct {v1}, Lorg/jsoup/parser/XmlTreeBuilder;-><init>()V

    invoke-direct {v0, v1}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    return-object v0
.end method


# virtual methods
.method public getErrors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jsoup/parser/ParseError;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jsoup/parser/Parser;->errors:Lorg/jsoup/parser/ParseErrorList;

    return-object v0
.end method

.method public getTreeBuilder()Lorg/jsoup/parser/TreeBuilder;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/Parser;->treeBuilder:Lorg/jsoup/parser/TreeBuilder;

    return-object v0
.end method

.method public isTrackErrors()Z
    .locals 1

    iget v0, p0, Lorg/jsoup/parser/Parser;->maxErrors:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseInput(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 2

    invoke-virtual {p0}, Lorg/jsoup/parser/Parser;->isTrackErrors()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/jsoup/parser/Parser;->maxErrors:I

    invoke-static {v0}, Lorg/jsoup/parser/ParseErrorList;->tracking(I)Lorg/jsoup/parser/ParseErrorList;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/jsoup/parser/Parser;->errors:Lorg/jsoup/parser/ParseErrorList;

    iget-object v0, p0, Lorg/jsoup/parser/Parser;->treeBuilder:Lorg/jsoup/parser/TreeBuilder;

    iget-object v1, p0, Lorg/jsoup/parser/Parser;->errors:Lorg/jsoup/parser/ParseErrorList;

    invoke-virtual {v0, p1, p2, v1}, Lorg/jsoup/parser/TreeBuilder;->parse(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lorg/jsoup/parser/ParseErrorList;->noTracking()Lorg/jsoup/parser/ParseErrorList;

    move-result-object v0

    goto :goto_0
.end method

.method public setTrackErrors(I)Lorg/jsoup/parser/Parser;
    .locals 0

    iput p1, p0, Lorg/jsoup/parser/Parser;->maxErrors:I

    return-object p0
.end method

.method public setTreeBuilder(Lorg/jsoup/parser/TreeBuilder;)Lorg/jsoup/parser/Parser;
    .locals 0

    iput-object p1, p0, Lorg/jsoup/parser/Parser;->treeBuilder:Lorg/jsoup/parser/TreeBuilder;

    return-object p0
.end method