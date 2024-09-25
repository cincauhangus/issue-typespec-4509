import "@typespec/http";
import "@typespec/rest";
import "@typespec/openapi3";

using TypeSpec.Http;
using TypeSpec.Rest;
using TypeSpec.OpenAPI;

@service({
    title: "API",
})
@server("https://example.com", "Single server endpoint")
@route("/api/")
namespace API {
    interface Sample {
        @route("/read")
        @get
        read(): {
            @statusCode _: 200;
        };
    }
}
