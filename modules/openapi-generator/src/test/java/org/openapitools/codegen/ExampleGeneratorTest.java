package org.openapitools.codegen;

import io.swagger.v3.oas.models.OpenAPI;
import org.openapitools.codegen.examples.ExampleGenerator;
import org.testng.annotations.Test;

import java.util.*;

import static org.testng.AssertJUnit.assertEquals;
import static org.testng.AssertJUnit.assertNull;

public class ExampleGeneratorTest {
    @Test
    public void generateFromResponseSchemaWithPrimitiveType() {
        OpenAPI openAPI = TestUtils.parseFlattenSpec("src/test/resources/3_0/example_generator_test.yaml");

        new InlineModelResolver().flatten(openAPI);

        ExampleGenerator exampleGenerator = new ExampleGenerator(openAPI.getComponents().getSchemas(), openAPI);
        Set<String> mediaTypeKeys = new TreeSet<>();
        mediaTypeKeys.add("application/json");
        List<Map<String, String>> examples = exampleGenerator.generateFromResponseSchema(
                "200",
                openAPI
                        .getPaths()
                        .get("/generate_from_response_schema_with_primitive_type")
                        .getGet()
                        .getResponses()
                        .get("200")
                        .getContent()
                        .get("application/json")
                        .getSchema(),
                mediaTypeKeys
        );

        assertEquals(1, examples.size());
        assertEquals("application/json", examples.get(0).get("contentType"));
        assertEquals("\"primitive type example value\"", examples.get(0).get("example"));
        assertEquals("200", examples.get(0).get("statusCode"));
    }

    @Test
    public void generateFromResponseSchemaWithDateFormat() {
        OpenAPI openAPI = TestUtils.parseFlattenSpec("src/test/resources/3_0/example_generator_test.yaml");

        new InlineModelResolver().flatten(openAPI);

        ExampleGenerator exampleGenerator = new ExampleGenerator(openAPI.getComponents().getSchemas(), openAPI);
        Set<String> mediaTypeKeys = new TreeSet<>();
        mediaTypeKeys.add("application/json");
        List<Map<String, String>> examples = exampleGenerator.generateFromResponseSchema(
                "200",
                openAPI
                        .getPaths()
                        .get("/generate_from_response_schema_with_date_format")
                        .getGet()
                        .getResponses()
                        .get("200")
                        .getContent()
                        .get("application/json")
                        .getSchema(),
                mediaTypeKeys
        );

        assertEquals(1, examples.size());
        assertEquals("application/json", examples.get(0).get("contentType"));
        assertEquals(String.format(Locale.ROOT, "{%n  \"date_with_example\" : \"2024-01-01\",%n  \"date_without_example\" : \"2000-01-23\"%n}"), examples.get(0).get("example"));
        assertEquals("200", examples.get(0).get("statusCode"));
    }

    @Test
    public void generateFromResponseSchemaWithNoExample() {
        OpenAPI openAPI = TestUtils.parseFlattenSpec("src/test/resources/3_0/example_generator_test.yaml");

        new InlineModelResolver().flatten(openAPI);

        ExampleGenerator exampleGenerator = new ExampleGenerator(openAPI.getComponents().getSchemas(), openAPI);
        Set<String> mediaTypeKeys = new TreeSet<>();
        mediaTypeKeys.add("application/json");
        List<Map<String, String>> examples = exampleGenerator.generateFromResponseSchema(
                "200",
                openAPI
                        .getPaths()
                        .get("/generate_from_response_schema_with_no_example")
                        .getGet()
                        .getResponses()
                        .get("200")
                        .getContent()
                        .get("application/json")
                        .getSchema(),
                mediaTypeKeys
        );

        assertNull(examples);
    }

    @Test
    public void generateFromResponseSchemaWithArrayOfModel() {
        OpenAPI openAPI = TestUtils.parseFlattenSpec("src/test/resources/3_0/example_generator_test.yaml");

        new InlineModelResolver().flatten(openAPI);

        ExampleGenerator exampleGenerator = new ExampleGenerator(openAPI.getComponents().getSchemas(), openAPI);
        Set<String> mediaTypeKeys = new TreeSet<>();
        mediaTypeKeys.add("application/json");
        List<Map<String, String>> examples = exampleGenerator.generateFromResponseSchema(
                "200",
                openAPI
                        .getPaths()
                        .get("/generate_from_response_schema_with_array_of_model")
                        .getGet()
                        .getResponses()
                        .get("200")
                        .getContent()
                        .get("application/json")
                        .getSchema(),
                mediaTypeKeys
        );

        assertEquals(1, examples.size());
        assertEquals("application/json", examples.get(0).get("contentType"));
        assertEquals("[ \"string schema example value\", \"string schema example value\" ]", examples.get(0).get("example"));
        assertEquals("200", examples.get(0).get("statusCode"));
    }

    @Test
    public void generateFromResponseSchemaWithArrayOfPrimitiveTypes() {
        OpenAPI openAPI = TestUtils.parseFlattenSpec("src/test/resources/3_0/example_generator_test.yaml");

        new InlineModelResolver().flatten(openAPI);

        ExampleGenerator exampleGenerator = new ExampleGenerator(openAPI.getComponents().getSchemas(), openAPI);
        Set<String> mediaTypeKeys = new TreeSet<>();
        mediaTypeKeys.add("application/json");
        List<Map<String, String>> examples = exampleGenerator.generateFromResponseSchema(
                "200",
                openAPI
                        .getPaths()
                        .get("/generate_from_response_schema_with_array_of_primitive_types")
                        .getGet()
                        .getResponses()
                        .get("200")
                        .getContent()
                        .get("application/json")
                        .getSchema(),
                mediaTypeKeys
        );

        assertEquals(1, examples.size());
        assertEquals("application/json", examples.get(0).get("contentType"));
        assertEquals("[ \"primitive types example value\", \"primitive types example value\" ]", examples.get(0).get("example"));
        assertEquals("200", examples.get(0).get("statusCode"));
    }

    @Test
    public void generateFromResponseSchemaWithArraySchema() {
        OpenAPI openAPI = TestUtils.parseFlattenSpec("src/test/resources/3_0/example_generator_test.yaml");

        new InlineModelResolver().flatten(openAPI);

        ExampleGenerator exampleGenerator = new ExampleGenerator(openAPI.getComponents().getSchemas(), openAPI);
        Set<String> mediaTypeKeys = new TreeSet<>();
        mediaTypeKeys.add("application/json");
        List<Map<String, String>> examples = exampleGenerator.generateFromResponseSchema(
                "200",
                openAPI
                        .getPaths()
                        .get("/generate_from_response_schema_array_reference")
                        .getGet()
                        .getResponses()
                        .get("200")
                        .getContent()
                        .get("application/json")
                        .getSchema(),
                mediaTypeKeys
        );

        assertEquals(1, examples.size());
        assertEquals("application/json", examples.get(0).get("contentType"));
        assertEquals(String.format(Locale.ROOT, "[ {%n  \"example_schema_property\" : \"example schema property value\"%n}, {%n  \"example_schema_property\" : \"example schema property value\"%n} ]"), examples.get(0).get("example"));
        assertEquals("200", examples.get(0).get("statusCode"));
    }

    @Test
    public void generateFromResponseSchemaWithModel() {
        OpenAPI openAPI = TestUtils.parseFlattenSpec("src/test/resources/3_0/example_generator_test.yaml");

        new InlineModelResolver().flatten(openAPI);

        ExampleGenerator exampleGenerator = new ExampleGenerator(openAPI.getComponents().getSchemas(), openAPI);
        Set<String> mediaTypeKeys = new TreeSet<>();
        mediaTypeKeys.add("application/json");
        List<Map<String, String>> examples = exampleGenerator.generateFromResponseSchema(
                "200",
                openAPI
                        .getPaths()
                        .get("/generate_from_response_schema_with_model")
                        .getGet()
                        .getResponses()
                        .get("200")
                        .getContent()
                        .get("application/json")
                        .getSchema(),
                mediaTypeKeys
        );

        assertEquals(1, examples.size());
        assertEquals("application/json", examples.get(0).get("contentType"));
        assertEquals(String.format(Locale.ROOT, "{%n  \"example_schema_property\" : \"example schema property value\"%n}"), examples.get(0).get("example"));
        assertEquals("200", examples.get(0).get("statusCode"));
    }

    @Test
    public void generateFromResponseSchemaWithAllOfComposedModel() {
        OpenAPI openAPI = TestUtils.parseFlattenSpec("src/test/resources/3_0/example_generator_test.yaml");

        new InlineModelResolver().flatten(openAPI);

        ExampleGenerator exampleGenerator = new ExampleGenerator(openAPI.getComponents().getSchemas(), openAPI);
        Set<String> mediaTypeKeys = new TreeSet<>();
        mediaTypeKeys.add("application/json");
        List<Map<String, String>> examples = exampleGenerator.generateFromResponseSchema(
                "200",
                openAPI
                        .getPaths()
                        .get("/generate_from_response_schema_with_allOf_composed_model")
                        .getGet()
                        .getResponses()
                        .get("200")
                        .getContent()
                        .get("application/json")
                        .getSchema(),
                mediaTypeKeys
        );

        assertEquals(1, examples.size());
        assertEquals("application/json", examples.get(0).get("contentType"));
        assertEquals(String.format(Locale.ROOT, "{%n  \"example_schema_property_composed\" : \"example schema property value composed\",%n  \"example_schema_property\" : \"example schema property value\"%n}"), examples.get(0).get("example"));
        assertEquals("200", examples.get(0).get("statusCode"));
    }

    @Test
    public void generateFromResponseSchemaWithAllOfChildComposedModel() {
        OpenAPI openAPI = TestUtils.parseFlattenSpec("src/test/resources/3_0/example_generator_test.yaml");

        new InlineModelResolver().flatten(openAPI);

        ExampleGenerator exampleGenerator = new ExampleGenerator(openAPI.getComponents().getSchemas(), openAPI);
        Set<String> mediaTypeKeys = new TreeSet<>();
        mediaTypeKeys.add("application/json");
        List<Map<String, String>> examples = exampleGenerator.generateFromResponseSchema(
                "200",
                openAPI
                        .getPaths()
                        .get("/generate_from_response_schema_with_allOf_child_composed_model")
                        .getGet()
                        .getResponses()
                        .get("200")
                        .getContent()
                        .get("application/json")
                        .getSchema(),
                mediaTypeKeys
        );

        assertEquals(1, examples.size());
        assertEquals("application/json", examples.get(0).get("contentType"));
        assertEquals(String.format(Locale.ROOT, "{%n  \"example_schema_property_composed\" : \"example schema property value composed\",%n  \"example_schema_property_composed_parent\" : \"example schema property value composed parent\",%n  \"example_schema_property\" : \"example schema property value\"%n}"), examples.get(0).get("example"));
        assertEquals("200", examples.get(0).get("statusCode"));
    }

    @Test
    public void generateFromResponseSchemaWithOneOfComposedModel() {
        OpenAPI openAPI = TestUtils.parseFlattenSpec("src/test/resources/3_0/example_generator_test.yaml");

        new InlineModelResolver().flatten(openAPI);

        ExampleGenerator exampleGenerator = new ExampleGenerator(openAPI.getComponents().getSchemas(), openAPI);
        Set<String> mediaTypeKeys = new TreeSet<>();
        mediaTypeKeys.add("application/json");
        List<Map<String, String>> examples = exampleGenerator.generateFromResponseSchema(
                "200",
                openAPI
                        .getPaths()
                        .get("/generate_from_response_schema_with_oneOf_composed_model")
                        .getGet()
                        .getResponses()
                        .get("200")
                        .getContent()
                        .get("application/json")
                        .getSchema(),
                mediaTypeKeys
        );

        assertEquals(1, examples.size());
        assertEquals("application/json", examples.get(0).get("contentType"));
        assertEquals(String.format(Locale.ROOT, "{%n  \"example_schema_property\" : \"example schema property value\"%n}"), examples.get(0).get("example"));
        assertEquals("200", examples.get(0).get("statusCode"));
    }

    @Test
    public void generateFromResponseSchemaWithAnyOfComposedModel() {
        OpenAPI openAPI = TestUtils.parseFlattenSpec("src/test/resources/3_0/example_generator_test.yaml");

        new InlineModelResolver().flatten(openAPI);

        ExampleGenerator exampleGenerator = new ExampleGenerator(openAPI.getComponents().getSchemas(), openAPI);
        Set<String> mediaTypeKeys = new TreeSet<>();
        mediaTypeKeys.add("application/json");
        List<Map<String, String>> examples = exampleGenerator.generateFromResponseSchema(
                "200",
                openAPI
                        .getPaths()
                        .get("/generate_from_response_schema_with_anyOf_composed_model")
                        .getGet()
                        .getResponses()
                        .get("200")
                        .getContent()
                        .get("application/json")
                        .getSchema(),
                mediaTypeKeys
        );

        assertEquals(1, examples.size());
        assertEquals("application/json", examples.get(0).get("contentType"));
        assertEquals(String.format(Locale.ROOT, "{%n  \"example_schema_property\" : \"example schema property value\"%n}"), examples.get(0).get("example"));
        assertEquals("200", examples.get(0).get("statusCode"));
    }
}
